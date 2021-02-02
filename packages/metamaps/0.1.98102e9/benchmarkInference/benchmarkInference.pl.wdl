version 1.0

task BenchmarkInferencepl {
  command <<<
    benchmarkInference_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}