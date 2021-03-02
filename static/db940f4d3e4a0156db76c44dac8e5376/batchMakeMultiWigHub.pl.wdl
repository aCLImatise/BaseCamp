version 1.0

task BatchMakeMultiWigHubpl {
  command <<<
    batchMakeMultiWigHub_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}