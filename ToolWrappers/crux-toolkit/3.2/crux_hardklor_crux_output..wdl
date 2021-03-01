version 1.0

task CruxHardklorCruxoutput {
  input {
    String crux
    String hard_klor
  }
  command <<<
    crux hardklor crux_output_ \
      ~{crux} \
      ~{hard_klor}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    hard_klor: ""
  }
  output {
    File out_stdout = stdout()
  }
}