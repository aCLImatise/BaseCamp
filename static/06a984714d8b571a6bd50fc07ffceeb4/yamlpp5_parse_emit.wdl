version 1.0

task Yamlpp5parseemit {
  command <<<
    yamlpp5_parse_emit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}