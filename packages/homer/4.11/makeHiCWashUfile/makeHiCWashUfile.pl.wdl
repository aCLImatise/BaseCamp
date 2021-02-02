version 1.0

task MakeHiCWashUfilepl {
  command <<<
    makeHiCWashUfile_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}