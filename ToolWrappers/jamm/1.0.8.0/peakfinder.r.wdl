version 1.0

task Peakfinderr {
  command <<<
    peakfinder_r
  >>>
  output {
    File out_stdout = stdout()
  }
}