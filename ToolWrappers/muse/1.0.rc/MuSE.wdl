version 1.0

task MuSE {
  command <<<
    MuSE
  >>>
  output {
    File out_stdout = stdout()
  }
}