version 1.0

task HiLine {
  command <<<
    HiLine
  >>>
  output {
    File out_stdout = stdout()
  }
}