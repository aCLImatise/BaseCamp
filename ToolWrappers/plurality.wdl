version 1.0

task Plurality {
  command <<<
    plurality
  >>>
  output {
    File out_stdout = stdout()
  }
}