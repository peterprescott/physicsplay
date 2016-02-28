using PyPlot

run(`./example --infile=sinc.csv --outfile=rect.csv`) ;
csv = readdlm( "sinc.csv", ',' ) ;
csvx = csv[ :, 1 ] ;
csvy = csv[ :, 2 ] ;

plot( csvx, csvy ) ;

xlabel("x")
ylabel(L"f(x) = \sinc(2 \pi x/N)")
grid("on")

savefig("sinc.pdf")

figure() ;

csv = readdlm( "rect.csv", ',' ) ;
csvx = csv[ :, 1 ] ;
csvyr = csv[ :, 2 ] ;
csvyi = csv[ :, 3 ] ;

cxvy = csvyr + csvyi * im ;

plot( csvx, abs( cxvy) ) ;

xlabel("k")
ylabel("|\hat{f}(k)|")
grid("on")

savefig("rect.pdf")
