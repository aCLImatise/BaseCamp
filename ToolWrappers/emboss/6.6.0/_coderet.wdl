version 1.0

task Coderet {
  command <<<
    _coderet
  >>>
  output {
    File out_stdout = stdout()
  }
}