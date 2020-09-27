version 1.0

task NcrfToBed {
  command <<<
    ncrf_to_bed
  >>>
  output {
    File out_stdout = stdout()
  }
}