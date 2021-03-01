version 1.0

task EXAMPLEcfg {
  command <<<
    EXAMPLE_cfg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}