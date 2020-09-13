version 1.0

task GmtkParmConvert {
  command <<<
    gmtkParmConvert
  >>>
  output {
    File out_stdout = stdout()
  }
}