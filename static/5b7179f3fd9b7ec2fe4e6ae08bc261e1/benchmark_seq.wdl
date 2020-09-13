version 1.0

task BenchmarkSeq {
  command <<<
    benchmark_seq
  >>>
  output {
    File out_stdout = stdout()
  }
}