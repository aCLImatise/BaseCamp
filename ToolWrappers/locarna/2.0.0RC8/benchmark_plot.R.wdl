version 1.0

task BenchmarkplotR {
  command <<<
    benchmark_plot_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}