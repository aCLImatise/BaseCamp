version 1.0

task Res2ftblMeaspy {
  command <<<
    res2ftbl_meas_py
  >>>
  output {
    File out_stdout = stdout()
  }
}