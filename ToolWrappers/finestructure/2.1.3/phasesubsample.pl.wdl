version 1.0

task Phasesubsamplepl {
  command <<<
    phasesubsample_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}