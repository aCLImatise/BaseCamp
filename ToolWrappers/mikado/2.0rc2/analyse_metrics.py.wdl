version 1.0

task AnalyseMetricspy {
  command <<<
    analyse_metrics_py
  >>>
  output {
    File out_stdout = stdout()
  }
}