version 1.0

task GetTopPeakspl {
  command <<<
    getTopPeaks_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}