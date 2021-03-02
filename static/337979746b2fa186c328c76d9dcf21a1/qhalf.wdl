version 1.0

task Qhalf {
  command <<<
    qhalf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}