version 1.0

task Caqcpl {
  command <<<
    caqc_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}