version 1.0

task GProfilerCallr {
  command <<<
    gProfilerCall_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}