version 1.0

task MakeMultiWigHubpl {
  command <<<
    makeMultiWigHub_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}