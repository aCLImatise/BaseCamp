version 1.0

task Makembindex {
  command <<<
    makembindex
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}