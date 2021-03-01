version 1.0

task BenchmarkInferencepl {
  command <<<
    benchmarkInference_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}