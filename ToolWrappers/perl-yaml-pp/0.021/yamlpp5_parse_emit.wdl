version 1.0

task Yamlpp5parseemit {
  command <<<
    yamlpp5_parse_emit
  >>>
  output {
    File out_stdout = stdout()
  }
}