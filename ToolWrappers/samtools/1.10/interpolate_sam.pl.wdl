version 1.0

task InterpolateSampl {
  command <<<
    interpolate_sam_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}