version 1.0

task SeqdbPerf {
  command <<<
    seqdb_perf
  >>>
  output {
    File out_stdout = stdout()
  }
}