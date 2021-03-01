version 1.0

task BenchmarkSeq {
  command <<<
    benchmark_seq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}