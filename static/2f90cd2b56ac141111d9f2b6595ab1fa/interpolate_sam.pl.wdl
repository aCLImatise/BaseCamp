version 1.0

task InterpolateSampl {
  command <<<
    interpolate_sam_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}