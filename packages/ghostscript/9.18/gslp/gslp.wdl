version 1.0

task Gslp {
  command <<<
    gslp
  >>>
  output {
    File out_stdout = stdout()
  }
}