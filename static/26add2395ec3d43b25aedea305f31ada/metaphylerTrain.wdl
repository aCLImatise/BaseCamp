version 1.0

task MetaphylerTrain {
  command <<<
    metaphylerTrain
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}