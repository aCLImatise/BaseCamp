version 1.0

task TransMapPslToGenePred {
  command <<<
    transMapPslToGenePred
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}