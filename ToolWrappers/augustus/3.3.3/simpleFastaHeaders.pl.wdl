version 1.0

task SimpleFastaHeaderspl {
  command <<<
    simpleFastaHeaders_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}