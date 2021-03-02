version 1.0

task Yamlpp5load {
  command <<<
    yamlpp5_load
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}