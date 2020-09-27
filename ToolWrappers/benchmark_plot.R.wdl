version 1.0

task BenchmarkplotR {
  command <<<
    benchmark_plot_R
  >>>
  output {
    File out_stdout = stdout()
  }
}