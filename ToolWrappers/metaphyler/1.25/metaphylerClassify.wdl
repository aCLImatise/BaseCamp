version 1.0

task MetaphylerClassify {
  command <<<
    metaphylerClassify
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}