version 1.0

task Enc2xs {
  command <<<
    enc2xs
  >>>
  output {
    File out_stdout = stdout()
  }
}