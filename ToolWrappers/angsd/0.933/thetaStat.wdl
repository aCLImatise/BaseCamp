version 1.0

task ThetaStat {
  command <<<
    thetaStat
  >>>
  output {
    File out_stdout = stdout()
  }
}