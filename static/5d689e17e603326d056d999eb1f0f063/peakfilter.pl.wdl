version 1.0

task Peakfilterpl {
  command <<<
    peakfilter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}