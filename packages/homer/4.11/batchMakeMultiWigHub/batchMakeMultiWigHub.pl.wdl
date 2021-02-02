version 1.0

task BatchMakeMultiWigHubpl {
  command <<<
    batchMakeMultiWigHub_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}