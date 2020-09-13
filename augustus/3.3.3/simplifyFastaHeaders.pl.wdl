version 1.0

task SimplifyFastaHeaderspl {
  command <<<
    simplifyFastaHeaders_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}