version 1.0

task Codcmp {
  command <<<
    _codcmp
  >>>
  output {
    File out_stdout = stdout()
  }
}