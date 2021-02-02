version 1.0

task Chips {
  command <<<
    _chips
  >>>
  output {
    File out_stdout = stdout()
  }
}