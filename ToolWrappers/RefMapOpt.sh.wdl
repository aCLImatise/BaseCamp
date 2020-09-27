version 1.0

task RefMapOptsh {
  command <<<
    RefMapOpt_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}