version 1.0

task TransposonPSIpl {
  command <<<
    transposonPSI_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}