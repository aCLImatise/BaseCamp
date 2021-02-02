version 1.0

task GmtkJT {
  command <<<
    gmtkJT
  >>>
  output {
    File out_stdout = stdout()
  }
}