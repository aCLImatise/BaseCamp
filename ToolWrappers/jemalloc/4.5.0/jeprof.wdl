version 1.0

task Jeprof {
  command <<<
    jeprof
  >>>
  output {
    File out_stdout = stdout()
  }
}