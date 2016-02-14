#include <stdio.h>
#include <cmath>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_math.h>
#include <gsl/gsl_min.h>
#include "minimizer.h"
#include "gslhelper.h"

#if 0
struct params
{
   int v ;

   params() : v(1)
   {
   }

   static double fn1(double x, void *param)
   {
      params & p = *(params *)param ;
      // this was the function from the gsl sample code.
      return cos(x) + p.v ;
   }

   double operator() ( const double x ) const
   {
      // gsl functions take void *, not const void *, so this needs coersion:
      return fn1( x, const_cast<params*>(this) ) ;
   }
} ;
#else
struct params
{
   double a ; ///< J (energy scale)
   double b ; ///< m (length scale)
   double c ; ///< N/m (spring constant)
   double d ; ///< m(maximum spring extension)
   double f ; ///< dimensionless (stiffness at maximum extension)
   double g ; ///< m/s^2 (gravitational accelleration).
   double m ;
   double t2 ;

   params( const double mass ) : 
      a{1},
      b{0.1},
      c{100},
      d{0.5},
      f{2500},
      g{9.8},
      m{mass}
   {
      t2 = - c/2/a ;
   }

   static double es( const double x, const params & p )
   {
      double t1 = p.d/(x-p.d) ;

      return p.a * ( p.b/x + t1 * t1 / p.f - std::exp( p.t2 * (x-p.b) ) ) ;
   }

   static double ew( const double x, const double m, const params & p )
   {
      return - p.g * m * x ;
   }

   static double function(double x, void *param)
   {
      params & p = *(params *)param ;

      return es(x, p) + ew(x, p.m, p) ;
   }

   double operator() ( const double x ) const
   {
      // gsl functions take void *, not const void *, so this needs coersion:
      return function( x, const_cast<params*>(this) ) ;
   }
} ;
#endif

void minimizer( const minimizerParameters & p, minimizerResults & r )
{
   double m = 2.0, m_expected = M_PI ;
   r.m_a = p.m_a ;
   r.m_b = p.m_b ;
   gsl_function F ;
   params c ;
   F.function = &c.function ;
   F.params = &c ;

   // turn off the print and abort on error behavior, and use explicit error checking.
   gsl_set_error_handler_off() ;

   const gsl_min_fminimizer_type * T = gsl_min_fminimizer_brent ;
   gsl_min_fminimizer * s = gsl_min_fminimizer_alloc( T ) ;

   if ( !s )
   {
      throw std::bad_alloc() ;
   }

   r.m_status = gsl_min_fminimizer_set( s, &F, m, r.m_a, r.m_b ) ;
   if ( !r.m_status )
   {
      if ( p.m_verbose )
      {
         printf( "using %s method\n", gsl_min_fminimizer_name (s) ) ;

         printf( "%5s [%9s, %9s] %9s %10s %9s\n",
                 "r.m_iter", "lower", "upper", "min", "err", "err(est)" ) ;

         printf( "%5d [%.7f, %.7f] %.7f %+.7f %.7f\n",
                 (int)r.m_iter, r.m_a, r.m_b, m, m - m_expected, r.m_b - r.m_a ) ;
      }

      do
      {
         r.m_iter++ ;
         r.m_status = gsl_min_fminimizer_iterate( s ) ;
         if ( r.m_status )
         {
            break ;
         }

         m = gsl_min_fminimizer_x_minimum( s ) ;
         r.m_a = gsl_min_fminimizer_x_lower( s ) ;
         r.m_b = gsl_min_fminimizer_x_upper( s ) ;

         r.m_status = min_test_interval( r.m_a, r.m_b, p.m_abserr, p.m_relerr ) ;

         if ( isGslStatusFatal( r.m_status ) )
         {
            break ;
         }

         if ( p.m_verbose )
         {
            printf( "%5d [%.7f, %.7f] "
                    "%.7f %+.7f %.7f\n", (int)r.m_iter, r.m_a, r.m_b, m, m - m_expected, r.m_b - r.m_a ) ;
         }
      } while ( r.m_status == GSL_CONTINUE && r.m_iter < p.m_max_iter ) ;
   }

   r.m_strerror = gsl_strerror( r.m_status ) ;

   gsl_min_fminimizer_free( s ) ;
}