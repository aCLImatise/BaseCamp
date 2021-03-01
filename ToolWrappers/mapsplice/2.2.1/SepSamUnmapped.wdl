version 1.0

task SepSamUnmapped {
  command <<<
    SepSamUnmapped
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}