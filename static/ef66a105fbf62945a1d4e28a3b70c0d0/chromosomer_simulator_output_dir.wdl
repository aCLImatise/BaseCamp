version 1.0

task ChromosomerSimulatorOutputDir {
  input {
    String? p
    Int? g
    String chromosome_r
    String simulator
  }
  command <<<
    chromosomer simulator output_dir \
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