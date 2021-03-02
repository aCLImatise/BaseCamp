version 1.0

task Xcorrr {
  command <<<
    xcorr_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}