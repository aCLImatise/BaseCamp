version 1.0

task ParseTreepl {
  command <<<
    ParseTree_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}