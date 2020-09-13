version 1.0

task EXAMPLEcfg {
  command <<<
    EXAMPLE_cfg
  >>>
  output {
    File out_stdout = stdout()
  }
}