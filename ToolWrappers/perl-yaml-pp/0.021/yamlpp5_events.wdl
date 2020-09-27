version 1.0

task Yamlpp5events {
  command <<<
    yamlpp5_events
  >>>
  output {
    File out_stdout = stdout()
  }
}