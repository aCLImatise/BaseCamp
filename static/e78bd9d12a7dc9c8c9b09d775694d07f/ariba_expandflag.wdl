version 1.0

task AribaExpandflag {
  command <<<
    ariba expandflag
  >>>
  output {
    File out_stdout = stdout()
  }
}