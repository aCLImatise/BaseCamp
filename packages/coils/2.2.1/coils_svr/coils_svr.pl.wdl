version 1.0

task Coilssvrpl {
  command <<<
    coils_svr_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}