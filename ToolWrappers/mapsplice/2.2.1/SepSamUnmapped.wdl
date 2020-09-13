version 1.0

task SepSamUnmapped {
  command <<<
    SepSamUnmapped
  >>>
  output {
    File out_stdout = stdout()
  }
}