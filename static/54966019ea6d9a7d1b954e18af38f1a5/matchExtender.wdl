version 1.0

task MatchExtender {
  command <<<
    matchExtender
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}