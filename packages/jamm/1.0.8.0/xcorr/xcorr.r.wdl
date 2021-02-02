version 1.0

task Xcorrr {
  command <<<
    xcorr_r
  >>>
  output {
    File out_stdout = stdout()
  }
}