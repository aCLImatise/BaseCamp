version 1.0

task FastqReadAvgpl {
  command <<<
    fastqReadAvg_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}