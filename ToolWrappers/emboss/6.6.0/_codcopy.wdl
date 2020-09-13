version 1.0

task Codcopy {
  command <<<
    _codcopy
  >>>
  output {
    File out_stdout = stdout()
  }
}