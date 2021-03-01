version 1.0

task SaxsRism {
  input {
    Boolean? solute
    Boolean? conc_ion
    Boolean? conc_wat
    Boolean? q_cut
    Boolean? dq
    Boolean? cut_off
    Boolean? anom_f
    Boolean? exper
    Boolean? expl_i
    Boolean? excl_v
    Boolean? decomp
    Boolean? phase
    Boolean? tight
    Boolean? off_cut_off
    Boolean? b_factor
    File? output_file
    Boolean? grid_dir
    Boolean? g
    String saxs_rism
  }
  command <<<
    saxs_rism \
      ~{saxs_rism} \
      ~{if (solute) then "--solute" else ""} \
      ~{if (conc_ion) then "--conc_ion" else ""} \
      ~{if (conc_wat) then "--conc_wat" else ""} \
      ~{if (q_cut) then "--qcut" else ""} \
      ~{if (dq) then "--dq" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (anom_f) then "--anom_f" else ""} \
      ~{if (exper) then "--exper" else ""} \
      ~{if (expl_i) then "--expli" else ""} \
      ~{if (excl_v) then "--exclV" else ""} \
      ~{if (decomp) then "--decomp" else ""} \
      ~{if (phase) then "--phase" else ""} \
      ~{if (tight) then "--tight" else ""} \
      ~{if (off_cut_off) then "--off_cutoff" else ""} \
      ~{if (b_factor) then "--bfactor" else ""} \
      ~{if (output_file) then "--output" else ""} \
      ~{if (grid_dir) then "--grid_dir" else ""} \
      ~{if (g) then "-g" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    solute: "pdb file of the solute"
    conc_ion: "bulk concentration of salt [M]"
    conc_wat: "water concentration [default 55.34M]"
    q_cut: "momentum transfer q cutoff [default 0.5 A^-1]"
    dq: "q spacing [default 0.01 A^-1]"
    cut_off: "distance cutoff [default 20 A]"
    anom_f: "f' of atomic scattering factor, used for ASAXS calculation,\\ncurrently only applied to Rb+, Sr2+ and Br- [default 0: off-edge]"
    exper: "the experimental data file to read q from, once specified this overrides dq and qcut\\nexpect the first column is q (A^-1)"
    expl_i: "flag for accounting for explicit H atoms in pdb file"
    excl_v: "flag for merging those contribution of the grid points inside the excluded volume of the solute into the solute"
    decomp: "flag for decomposing SAXS intensity into site contributions (lead to 2-5x computational time)"
    phase: "output phase and error analysis instead of partial intensities"
    tight: "flag for using tighter convergence criteria for Lebedev quadrature (expect more time)"
    off_cut_off: "flag for turning off cutoff, using all grid points for the calculation"
    b_factor: "using B-factor in the PDB file to account for solute flexibility"
    output_file: "output file"
    grid_dir: ""
    g: ""
    saxs_rism: "-g   --grid_dir     folder where all the rism3d output found (expecting *.dx files there)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}