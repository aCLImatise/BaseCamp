version 1.0

task Mpinab2c {
  command <<<
    mpinab2c
  >>>
  output {
    File out_stdout = stdout()
  }
}