version 1.0

task GmtkOnline {
  command <<<
    gmtkOnline
  >>>
  output {
    File out_stdout = stdout()
  }
}