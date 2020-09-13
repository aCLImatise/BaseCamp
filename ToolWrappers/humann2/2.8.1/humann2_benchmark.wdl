version 1.0

task Humann2Benchmark {
  command <<<
    humann2_benchmark
  >>>
  output {
    File out_stdout = stdout()
  }
}