version 1.0

task Xparmed {
  command <<<
    xparmed
  >>>
  output {
    File out_stdout = stdout()
  }
}