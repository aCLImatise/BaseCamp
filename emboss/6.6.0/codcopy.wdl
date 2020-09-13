version 1.0

task Codcopy {
  command <<<
    codcopy
  >>>
  output {
    File out_stdout = stdout()
  }
}