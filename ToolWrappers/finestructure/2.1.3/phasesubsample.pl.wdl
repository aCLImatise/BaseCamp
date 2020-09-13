version 1.0

task Phasesubsamplepl {
  command <<<
    phasesubsample_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}