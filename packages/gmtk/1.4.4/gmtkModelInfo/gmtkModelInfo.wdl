version 1.0

task GmtkModelInfo {
  command <<<
    gmtkModelInfo
  >>>
  output {
    File out_stdout = stdout()
  }
}