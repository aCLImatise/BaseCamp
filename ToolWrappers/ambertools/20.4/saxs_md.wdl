version 1.0

task SaxsMd {
  input {
    Boolean? solvent
    Boolean? q_cut
    Boolean? dq
    Boolean? cut_off
    Boolean? tight
    Boolean? anom_f
    Boolean? expl_i
    Boolean? corrected
    Boolean? b_cut_off
    Boolean? exper
    File? output_file
    Boolean? system
    Boolean? i
    String saxs_md
  }
  command <<<
    saxs_md \
      ~{saxs_md} \
      ~{if (solvent) then "--solvent" else ""} \
      ~{if (q_cut) then "--qcut" else ""} \
      ~{if (dq) then "--dq" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (tight) then "--tight" else ""} \
      ~{if (anom_f) then "--anom_f" else ""} \
      ~{if (expl_i) then "--expli" else ""} \
      ~{if (corrected) then "--corrected" else ""} \
      ~{if (b_cut_off) then "--bcutoff" else ""} \
      ~{if (exper) then "--exper" else ""} \
      ~{if (output_file) then "--output" else ""} \
      ~{if (system) then "--system" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    solvent: "pdb file of the solvent"
    q_cut: "momentum transfer q cutoff [default 1.0 A^-1]"
    dq: "q spacing [default 0.01 A^-1]"
    cut_off: "generate a box with buffer=cutoff [default 10A]. Only keeping solvent molecules\\nwithin this box for SAXS calculation"
    tight: "use tighter convergence criteria for Lebedev quadrature"
    anom_f: "f' for anomalous scattering, used for ASAXS calculation,\\ncurrently only support Rb+, Sr2+ and Br- [default 0: off-edge]"
    expl_i: "flag for accounting for explicit H atoms in pdb file"
    corrected: "correction d for bulk density difference between the blank and sample simulation\\nthe excess density will be g = (1-d)rho_sample - rho_blank"
    b_cut_off: "minimum distance between the solvent and solute to apply the above correction"
    exper: "experiment data file to read q from, once specified this overrides dq and qcut\\nExpect the first column is q (A^-1)"
    output_file: "output file"
    system: ""
    i: ""
    saxs_md: "-i   --system       pdb file of the solute"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}