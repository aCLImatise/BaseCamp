version 1.0

task ChromosomerSimulatorChrNum {
  input {
    String? g
    String? p
    String chromosome_r
    String simulator
  }
  command <<<
    chromosomer simulator chr_num \
      ~{chromosome_r} \
      ~{simulator} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    p: ""
    chromosome_r: ""
    simulator: ""
  }
}