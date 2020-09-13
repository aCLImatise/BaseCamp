version 1.0

task BenchmarkQual {
  command <<<
    benchmark_qual
  >>>
  output {
    File out_stdout = stdout()
  }
}