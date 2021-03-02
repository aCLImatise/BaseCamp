version 1.0

task Yamlpp5loaddump {
  command <<<
    yamlpp5_load_dump
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}