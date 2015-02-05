#s,\\E{(.*?)},{E_{k $1}^\\nought},g ;
#s/\\0bcs/0_{\\mathrm{BCS}}/g ;
#s/\\b(.)_/\\overbar{$1}_/g ;
#s/\\bar(.)/\\overbar{$1}/g ;
#s/\\bark\b/\\overbar{k}/g ;
#s/\\barm\b/\\overbar{m}/g ;
#s/\\Be\b/\\Bepsilon/g ;
#s/\\bkF/\\Bk_{\\mathrm{F}}/g ;
#s/\\bL/b_{\\mathrm{L}}/g ;
#s/\\bpF/\\Bp_{\\mathrm{F}}/g ;
#s/\\Br_av/\\Br_{\\mathrm{av}}/g ;
#s/\\Brm/\\Br - \\Br_m/g;
#s/\\Brn/\\Br - \\Br_n/g;
#s/\\bT/b_{\\mathrm{T}}/g ;
#s/\\bvF/\\Bv_{\\mathrm{F}}/g ;
#s/\\DC/D_{\\mathrm{C}}/g ;
#s/\\DD/\\mathcal{D}/g ;
#s/\\domega/\\sin\\theta d\\theta d\\phi/g ;
#s/\\down\b/\\downarrow/g ;
#s/\\DV/D_{\\mathrm{V}}/g ;
#s/\\E0/{\\E_k^\\nought}/g ;
#s/\\Eb/E_{\\mathrm{binding}}/g ;
#s/\\EC/E_{\\mathrm{C}}/g ;
#s/\\Ed/E_{\\mathrm{d}}/g ;
#s/\\ED/E_{\\mathrm{D}}/g ;
#s/\\ee/\\epsilon/g ;
#s/\\ee/\\mathcal{E}/g ;
#s/\\Eg/E_{\\mathrm{g}}/g ;
#s/\\ES/E_{\\mathrm{S}}/g ;
#s/\\EV/E_{\\mathrm{V}}/g ;
#s/\\Gamma_{cav}/\\Gamma_{\\mathrm{cav}}/g  ;
#s/\\Gamma_{sp}/\\Gamma_{\\mathrm{sp}}/g  ;
#s/\\Gamma_{st}/\\Gamma_{\\mathrm{st}}/g  ;
#s/\\Gamma_cav/\\Gamma_{\\mathrm{cav}}/g  ;
#s/\\Gamma_sp/\\Gamma_{\\mathrm{sp}}/g  ;
#s/\\Gamma_st/\\Gamma_{\\mathrm{st}}/g ;
#s/\\Ha/\\hat{H}_A/g;
#s/\\hb2m/\\frac{\\Hbar}{2m}/g;
#s/\\Hc/\\hat{H}/g;
#s/\\Hc/H_{\\mathrm{c}}/g ;
#s/\\i(\d)/{($1)}/g;
#s/\\II/\\mathcal{I}/g ;
#s/\\ik/{(k)}/g;
#s/\\ik\+1/{(k+1)}/g;
#s/\\ik\-1/{(k-1)}/g;
#s/\\lambdaL/\\lambda_{\\mathrm{L}}/g ;
#s/\\me/m_{\\mathrm{e}}/g ;
#s/\\n *(\+|-|\\pm) *(\(\d *, *\d\))(\d)\b/{\\Bn $1 $2, $3}/g ;  # \Bu_\n+(1,0)1 -> \Bu_{\Bn + (1,0), 1}
#s/\\n *(\+|-|\\pm) *(\(\d *, *\d\))\b/{\\Bn $1 $2}/g ;           # \Bu_\n+(1,0) -> \Bu_{\Bn + (1,0)}
#s/\\n-(\d)(\d)\b/{n - $1, $2}/g ;
#s/\\n(\d)\b/{\\Bn, $1}/g ;                                      # \Bu_\n1 -> \Bu_{\\Bn, 1}
#s/\\n(\d)\b/{n, $1}/g ;
#s/\\n\+(\d)(\d)\b/{n + $1, $2}/g ;
#s/\\na\b/{n, \\alpha}/g ;
#s/\\ND/N_{\\mathrm{D}}/g ;
#s/\\Nec/N_{\\mathrm{eff}}^{\\mathrm{C}}/g ;
#s/\\Nev/N_{\\mathrm{eff}}^{\\mathrm{V}}/g ;
#s/\\nkd/_{-\\Bk \\downarrow}/g ;
#s/\\nku/_{-\\Bk \\uparrow}/g ;
#s/\\ns/n_{\\mathrm{s}}/g ;
#s/\\omegac/\\omega_{\\text{cutoff}}/g ;
#s/\\omegaD/\\omega_{\\mathrm{D}}/g ;
#s/\\omegan/\\omega_\\nought/g ;
#s/\\pkd/_{\\Bk \\downarrow}/g ;
#s/\\pku/_{\\Bk \\uparrow}/g ;
#s/\\pp(.)/{($1)}/g ;
#s/\\PP/\\mathcal{P}/g ;
#s/\\Prad/P_{\\textrm{rad}}/g ;
#s/\\qL/q_{\\mathrm{L}}/g ;
#s/\\qT/q_{\\mathrm{T}}/g ;
#s/\\rcap_av/\\rcap_{\\mathrm{av}}/g ;
#s/\\rhoel/\\rho_{\\mathrm{el}}/g ;
#s/\\rhoph/\\rho_{\\mathrm{ph}}/g ;
#s/\\Shat/\\hat{S}/g ;
#s/\\spacegrad_T/\\spacegrad_{\\mathrm{T}}/g ;
#s/\\TB/\\tilde{\\BB}/g;
#s/\\TE/\\tilde{\\BE}/g;
#s/\\tp/\\tilde{p}/g ;
#s/\\tu/\\tilde{u}/g ;
#s/\\tx/\\tilde{x}/g ;
#s/\\up\b/\\uparrow/g ;
#s/\\Veff/V_{\\mathrm{eff}}/g ;
#s/\\Veph/V_{\\mathrm{e,ph}}/g ;
#s/\^classical/^{\\mathrm{classical}}/g ;
#s/\bialpha\b/{i_\\alpha}/g ;
#s/\tY\b/\\tilde{Y}/g ;
#s/_\\I/_{\\mathrm{I}}/g;
#s/_\\R/_{\\mathrm{R}}/g;
#s/_\\T/_{\\mathrm{T}}/g;
#s/_av/_{\\mathrm{av}}/g ;
#s/_B/_{\\mathrm{B}}/g ;
#s/_bath/_{\\text{bath}}/g ;
#s/_BEC/_{\\mathrm{BEC}}/g ;
#s/_c/_{\\mathrm{c}}/g ;
#s/_classical/_{\\mathrm{classical}}/g ;
#s/_CM/_{\\mathrm{CM}}/g ;
#s/_corrected/_{\\mathrm{corrected}}/g ;
#s/_coupling/_{\\text{coupling}}/g ;
#s/_div/_{\\mathrm{div}}/g ;
#s/_E/_{\\mathrm{E}}/g ;
#s/_eff/_{\\mathrm{eff}}/g ;
#s/_F/_{\\mathrm{F}}/g ;
#s/_final/_{\\mathrm{final}}/g ;
#s/_full/_{\\text{full}}/g ;
#s/_G/_{\\mathrm{G}}/g ;
#s/_ideal/_{\\mathrm{ideal}}/g ;
#s/_initial/_{\\mathrm{initial}}/g ;
#s/_L/_{\\mathrm{L}}/g ;
#s/_laser/_{\\mathrm{laser}}/g ;
#s/_max/_{\\mathrm{max}}/g ;
#s/_min/_{\\mathrm{min}}/g ;
#s/_osc/_{\\mathrm{osc}}/g ;
#s/_ph/_{\\mathrm{ph}}/g ;
#s/_quantum/_{\\mathrm{quantum}}/g ;
#s/_subsystem/_{\\text{subsystem}}/g ;
#s/_T/_{\\mathrm{T}}/g ;
#s/_total/_{\\mathrm{total}}/g ;
#s/_V/_{\\mathrm{V}}/g ;
#s/{QM}/{\\mathrm{QM}}/g ;
#s/ENV/{(\\mathrm{E}, \\mathrm{N}, \mathrm{V})}/g ;
#s/k_B/k_{\\mathrm{B}}/g ;
#s/N_c/N_{\\mathrm{c}}/g ;
#s/n1/n_1/g ;
#s/n2/n_2/g ;
#s/n3/n_3/g ;
#s/Ndown/N_{\\downarrow}/g ;
#s/Nup/N_{\\uparrow}/g ;
#s/P_r/P_{\\mathrm{rect}}/g ;
#s/P_s/P_{\\mathrm{sin}}/g ;
#s/pialpha\b/p_{i_\\alpha}/g ;
#s/pidotalpha/\\dot{p}_{i_\\alpha}/g ;
#s/xialpha\b/x_{i_\\alpha}/g ;
#s/xidotalpha/\\dot{x}_{i_\\alpha}/g ;
s/\\btp/\\lr{ \\theta, \\phi }/g ;
#s/\\intsphere/\\int_0^{2 \\pi} \\int_0^\\pi/g ;
s/\\profE/Prof. Eleftheriades/g;
