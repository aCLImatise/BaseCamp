version 1.0

task Res2ftblMeaspy {
  command <<<
    res2ftbl_meas_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}