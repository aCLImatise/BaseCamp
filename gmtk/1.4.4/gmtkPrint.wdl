version 1.0

task GmtkPrint {
  command <<<
    gmtkPrint
  >>>
  output {
    File out_stdout = stdout()
  }
}