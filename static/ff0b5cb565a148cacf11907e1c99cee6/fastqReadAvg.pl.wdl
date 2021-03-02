version 1.0

task FastqReadAvgpl {
  command <<<
    fastqReadAvg_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}