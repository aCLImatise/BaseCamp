version 1.0

task MkGottchaTaxTreepl {
  command <<<
    mkGottchaTaxTree_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}