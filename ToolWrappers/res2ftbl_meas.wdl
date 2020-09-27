version 1.0

task Res2ftblMeas {
  command <<<
    res2ftbl_meas
  >>>
  output {
    File out_stdout = stdout()
  }
}