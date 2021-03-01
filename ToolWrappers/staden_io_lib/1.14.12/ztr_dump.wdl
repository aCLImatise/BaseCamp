version 1.0

task ZtrDump {
  command <<<
    ztr_dump
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}