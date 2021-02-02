version 1.0

task MaxentscanScore5pl {
  command <<<
    maxentscan_score5_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}