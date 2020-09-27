version 1.0

task AnalyseMetricspyMetrics {
  input {
    String ref_map
  }
  command <<<
    analyse_metrics_py metrics \
      ~{ref_map}
  >>>
  parameter_meta {
    ref_map: ""
  }
  output {
    File out_stdout = stdout()
  }
}