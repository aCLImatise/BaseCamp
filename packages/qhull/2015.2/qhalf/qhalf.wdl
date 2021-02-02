version 1.0

task Qhalf {
  command <<<
    qhalf
  >>>
  output {
    File out_stdout = stdout()
  }
}