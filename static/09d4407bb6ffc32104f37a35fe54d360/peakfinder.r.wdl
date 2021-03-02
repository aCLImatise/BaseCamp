version 1.0

task Peakfinderr {
  command <<<
    peakfinder_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}