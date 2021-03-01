version 1.0

task MakeMultiWigHubpl {
  command <<<
    makeMultiWigHub_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}