version 1.0

task AribaRefquery {
  command <<<
    ariba refquery
  >>>
  output {
    File out_stdout = stdout()
  }
}