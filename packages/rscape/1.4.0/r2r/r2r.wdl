version 1.0

task R2r {
  command <<<
    r2r
  >>>
  output {
    File out_stdout = stdout()
  }
}