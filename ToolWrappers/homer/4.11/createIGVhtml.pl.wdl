version 1.0

task CreateIGVhtmlpl {
  command <<<
    createIGVhtml_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}