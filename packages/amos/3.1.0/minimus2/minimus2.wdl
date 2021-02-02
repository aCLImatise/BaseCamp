version 1.0

task Minimus2 {
  command <<<
    minimus2
  >>>
  output {
    File out_stdout = stdout()
  }
}