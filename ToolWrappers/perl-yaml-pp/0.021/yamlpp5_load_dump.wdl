version 1.0

task Yamlpp5loaddump {
  command <<<
    yamlpp5_load_dump
  >>>
  output {
    File out_stdout = stdout()
  }
}