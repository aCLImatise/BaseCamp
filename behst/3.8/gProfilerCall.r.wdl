version 1.0

task GProfilerCallr {
  command <<<
    gProfilerCall_r
  >>>
  output {
    File out_stdout = stdout()
  }
}