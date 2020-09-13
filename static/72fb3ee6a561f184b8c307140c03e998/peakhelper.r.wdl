version 1.0

task Peakhelperr {
  command <<<
    peakhelper_r
  >>>
  output {
    File out_stdout = stdout()
  }
}