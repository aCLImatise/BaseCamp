version 1.0

task ToUpperCaseplbak {
  command <<<
    to_upper_case_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}