version 1.0

task GmtkTime {
  command <<<
    gmtkTime
  >>>
  output {
    File out_stdout = stdout()
  }
}