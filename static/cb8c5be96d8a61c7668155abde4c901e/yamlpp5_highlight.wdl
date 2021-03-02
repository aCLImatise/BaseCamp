version 1.0

task Yamlpp5highlight {
  command <<<
    yamlpp5_highlight
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}