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
    Boolean? vol_fmt
    Boolean? periodic
    Boolean? closure
    Boolean? ng
    Boolean? uc_coeff
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
      ~{if (vol_fmt) then "--volfmt" else ""} \
      ~{if (periodic) then "--periodic" else ""} \
      ~{if (closure) then "--closure" else ""} \
      ~{if (ng) then "--ng" else ""} \
      ~{if (uc_coeff) then "--uccoeff" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    vol_fmt: "dx"
    periodic: "(null)"
    closure: "(null)"
    ng: "0,0,0"
    uc_coeff: "0.000000,0.000000,0.000000,0.000000"
  }
  output {
    File out_stdout = stdout()
  }
}