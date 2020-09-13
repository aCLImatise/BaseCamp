version 1.0

task Rism3dsnglpnt {
  input {
    File? x_vv
    Boolean? pdb
    Boolean? prm_top
    Boolean? rst
    Boolean? t_raj
    Boolean? guv
    Boolean? huv
    Boolean? cuv
    Boolean? uuv
    Boolean? asymp
    Boolean? q_uv
    Boolean? chg_dist
    Boolean? ex_chem
    Boolean? solve_ne
    Boolean? entropy
    Boolean? ex_chem_gf
    Boolean? solve_neg_f
    Boolean? entropy_gf
    Boolean? exc_he_misc
    Boolean? solve_ne_is_c
    Boolean? entropy_is_c
    Boolean? ex_chem_uc
    Boolean? solve_neu_c
    Boolean? entropy_uc
    Boolean? pot_uv
    Boolean? mol_reconstruct
    Boolean? vol_fmt
    Boolean? periodic
    Boolean? closure
    Boolean? closure_order
    Boolean? asymp_corr
    Boolean? buffer
    Boolean? solv_cut
    Boolean? grds_pc
    Boolean? ng
    Boolean? solv_box
    Boolean? tolerance
    Boolean? mdi_is_del
    Boolean? mdi_is_restart
    Boolean? mdi_is_n_vec
    Boolean? max_step
    Boolean? n_propagate
    Boolean? centering
    Boolean? polar_decomp
    Boolean? entropic_decomp
    Boolean? gf
    Boolean? pc
    Boolean? uc_coeff
    Boolean? verbose
    Boolean? tree_dcf
    Boolean? tree_tcf
    Boolean? tree_coulomb
    Boolean? tree_dcf_order
    Boolean? tree_tcf_order
    Boolean? tree_coulomb_order
    Boolean? tree_dc_fn_zero
    Boolean? treet_cfn_zero
    Boolean? tree_coulomb_n_zero
    Boolean? tree_dcf_mac
    Boolean? tree_tcf_mac
    Boolean? tree_coulomb_mac
    Boolean? asymp_k_space_tolerance
    Boolean? lj_tolerance
    Boolean? charge_smear
    Boolean? selftest
  }
  command <<<
    rism3d_snglpnt \
      ~{if defined(x_vv) then ("--xvv " +  '"' + x_vv + '"') else ""} \
      ~{if (pdb) then "--pdb" else ""} \
      ~{if (prm_top) then "--prmtop" else ""} \
      ~{if (rst) then "--rst" else ""} \
      ~{if (t_raj) then "--traj" else ""} \
      ~{if (guv) then "--guv" else ""} \
      ~{if (huv) then "--huv" else ""} \
      ~{if (cuv) then "--cuv" else ""} \
      ~{if (uuv) then "--uuv" else ""} \
      ~{if (asymp) then "--asymp" else ""} \
      ~{if (q_uv) then "--quv" else ""} \
      ~{if (chg_dist) then "--chgdist" else ""} \
      ~{if (ex_chem) then "--exchem" else ""} \
      ~{if (solve_ne) then "--solvene" else ""} \
      ~{if (entropy) then "--entropy" else ""} \
      ~{if (ex_chem_gf) then "--exchemGF" else ""} \
      ~{if (solve_neg_f) then "--solveneGF" else ""} \
      ~{if (entropy_gf) then "--entropyGF" else ""} \
      ~{if (exc_he_misc) then "--exchemISC" else ""} \
      ~{if (solve_ne_is_c) then "--solveneISC" else ""} \
      ~{if (entropy_is_c) then "--entropyISC" else ""} \
      ~{if (ex_chem_uc) then "--exchemUC" else ""} \
      ~{if (solve_neu_c) then "--solveneUC" else ""} \
      ~{if (entropy_uc) then "--entropyUC" else ""} \
      ~{if (pot_uv) then "--potUV" else ""} \
      ~{if (mol_reconstruct) then "--molReconstruct" else ""} \
      ~{if (vol_fmt) then "--volfmt" else ""} \
      ~{if (periodic) then "--periodic" else ""} \
      ~{if (closure) then "--closure" else ""} \
      ~{if (closure_order) then "--closureorder" else ""} \
      ~{if (asymp_corr) then "--asympcorr" else ""} \
      ~{if (buffer) then "--buffer" else ""} \
      ~{if (solv_cut) then "--solvcut" else ""} \
      ~{if (grds_pc) then "--grdspc" else ""} \
      ~{if (ng) then "--ng" else ""} \
      ~{if (solv_box) then "--solvbox" else ""} \
      ~{if (tolerance) then "--tolerance" else ""} \
      ~{if (mdi_is_del) then "--mdiis_del" else ""} \
      ~{if (mdi_is_restart) then "--mdiis_restart" else ""} \
      ~{if (mdi_is_n_vec) then "--mdiis_nvec" else ""} \
      ~{if (max_step) then "--maxstep" else ""} \
      ~{if (n_propagate) then "--npropagate" else ""} \
      ~{if (centering) then "--centering" else ""} \
      ~{if (polar_decomp) then "--polarDecomp" else ""} \
      ~{if (entropic_decomp) then "--entropicDecomp" else ""} \
      ~{if (gf) then "--gf" else ""} \
      ~{if (pc) then "--pc" else ""} \
      ~{if (uc_coeff) then "--uccoeff" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (tree_dcf) then "--treeDCF" else ""} \
      ~{if (tree_tcf) then "--treeTCF" else ""} \
      ~{if (tree_coulomb) then "--treeCoulomb" else ""} \
      ~{if (tree_dcf_order) then "--treeDCFOrder" else ""} \
      ~{if (tree_tcf_order) then "--treeTCFOrder" else ""} \
      ~{if (tree_coulomb_order) then "--treeCoulombOrder" else ""} \
      ~{if (tree_dc_fn_zero) then "--treeDCFN0" else ""} \
      ~{if (treet_cfn_zero) then "--treeTCFN0" else ""} \
      ~{if (tree_coulomb_n_zero) then "--treeCoulombN0" else ""} \
      ~{if (tree_dcf_mac) then "--treeDCFMAC" else ""} \
      ~{if (tree_tcf_mac) then "--treeTCFMAC" else ""} \
      ~{if (tree_coulomb_mac) then "--treeCoulombMAC" else ""} \
      ~{if (asymp_k_space_tolerance) then "--asympKSpaceTolerance" else ""} \
      ~{if (lj_tolerance) then "--ljTolerance" else ""} \
      ~{if (charge_smear) then "--chargeSmear" else ""} \
      ~{if (selftest) then "--selftest" else ""}
  >>>
  parameter_meta {
    x_vv: "[--guv Guv_rootname]"
    pdb: "(null)"
    prm_top: "(null)"
    rst: "(null)"
    t_raj: "(null)"
    guv: "(null)"
    huv: "(null)"
    cuv: "(null)"
    uuv: "(null)"
    asymp: "(null)"
    q_uv: "(null)"
    chg_dist: "(null)"
    ex_chem: "(null)"
    solve_ne: "(null)"
    entropy: "(null)"
    ex_chem_gf: "(null)"
    solve_neg_f: "(null)"
    entropy_gf: "(null)"
    exc_he_misc: "(null)"
    solve_ne_is_c: "(null)"
    entropy_is_c: "(null)"
    ex_chem_uc: "(null)"
    solve_neu_c: "(null)"
    entropy_uc: "(null)"
    pot_uv: "(null)"
    mol_reconstruct: "0"
    vol_fmt: "dx"
    periodic: "(null)"
    closure: "(null)"
    closure_order: "1"
    asymp_corr: "1"
    buffer: "14.000000"
    solv_cut: "-1.000000"
    grds_pc: "0.500000,0.500000,0.500000"
    ng: "0,0,0"
    solv_box: "0.000000,0.000000,0.000000"
    tolerance: "0.000010"
    mdi_is_del: "0.700000"
    mdi_is_restart: "10.000000"
    mdi_is_n_vec: "5"
    max_step: "10000"
    n_propagate: "5"
    centering: "1"
    polar_decomp: "0"
    entropic_decomp: "0"
    gf: "0"
    pc: "+                   0"
    uc_coeff: "0.000000,0.000000,0.000000,0.000000"
    verbose: "0"
    tree_dcf: "1"
    tree_tcf: "1"
    tree_coulomb: "0"
    tree_dcf_order: "2"
    tree_tcf_order: "2"
    tree_coulomb_order: "2"
    tree_dc_fn_zero: "500"
    treet_cfn_zero: "500"
    tree_coulomb_n_zero: "500"
    tree_dcf_mac: "0.100000"
    tree_tcf_mac: "0.100000"
    tree_coulomb_mac: "0.100000"
    asymp_k_space_tolerance: ""
    lj_tolerance: "-1.000000"
    charge_smear: "1.000000"
    selftest: "0"
  }
  output {
    File out_stdout = stdout()
  }
}