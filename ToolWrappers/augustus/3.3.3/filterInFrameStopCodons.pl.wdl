version 1.0

task FilterInFrameStopCodonspl {
  command <<<
    filterInFrameStopCodons_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}