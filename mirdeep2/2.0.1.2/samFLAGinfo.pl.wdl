version 1.0

task SamFLAGinfopl {
  command <<<
    samFLAGinfo_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}