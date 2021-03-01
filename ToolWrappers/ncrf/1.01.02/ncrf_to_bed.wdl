version 1.0

task NcrfToBed {
  command <<<
    ncrf_to_bed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}