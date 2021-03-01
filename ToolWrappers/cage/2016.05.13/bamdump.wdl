version 1.0

task Bamdump {
  command <<<
    bamdump
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}