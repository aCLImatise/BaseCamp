version 1.0

task SeqdbPerf {
  command <<<
    seqdb_perf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}