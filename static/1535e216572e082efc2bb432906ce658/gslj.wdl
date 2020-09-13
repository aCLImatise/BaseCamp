version 1.0

task Gslj {
  command <<<
    gslj
  >>>
  output {
    File out_stdout = stdout()
  }
}