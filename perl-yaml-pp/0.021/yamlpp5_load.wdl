version 1.0

task Yamlpp5load {
  command <<<
    yamlpp5_load
  >>>
  output {
    File out_stdout = stdout()
  }
}