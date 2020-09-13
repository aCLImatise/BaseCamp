version 1.0

task MetaphylerTrain {
  command <<<
    metaphylerTrain
  >>>
  output {
    File out_stdout = stdout()
  }
}