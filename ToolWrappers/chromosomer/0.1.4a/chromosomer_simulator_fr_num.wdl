version 1.0

task ChromosomerSimulatorFrNum {
  input {
    String? p
    Int? g
    String chromosome_r
    String simulator
  }
  command <<<
    chromosomer simulator fr_num \
      ~{chromosome_r} \
      ~{simulator} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p: ""
    g: ""
    chromosome_r: ""
    simulator: ""
  }
  output {
    File out_stdout = stdout()
  }
}