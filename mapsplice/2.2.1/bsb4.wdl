version 1.0

task Bsb4 {
  command <<<
    bsb4
  >>>
  output {
    File out_stdout = stdout()
  }
}