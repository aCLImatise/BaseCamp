version 1.0

task Peakhelperr {
  command <<<
    peakhelper_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}