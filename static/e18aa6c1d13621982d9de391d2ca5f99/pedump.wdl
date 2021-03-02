version 1.0

task Pedump {
  command <<<
    pedump
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}