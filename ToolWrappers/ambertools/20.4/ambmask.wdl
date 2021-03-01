version 1.0

task Ambmask {
  input {
    String prm_top
    String in_pc_rd
    String prn_lev
    String format
  }
  command <<<
    ambmask \
      ~{prm_top} \
      ~{in_pc_rd} \
      ~{prn_lev} \
      ~{format}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prm_top: ": amber topology"
    in_pc_rd: ": amber (restrt) coordinates"
    prn_lev: ": amount of (debugging) info printed"
    format: ": output format: short|pdb|amber"
  }
  output {
    File out_stdout = stdout()
  }
}