version 1.0

task DBinfopl {
  command <<<
    DBinfo_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}