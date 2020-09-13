version 1.0

task FilterInFrameStopCodonspl {
  command <<<
    filterInFrameStopCodons_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}