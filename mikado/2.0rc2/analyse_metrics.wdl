version 1.0

task AnalyseMetrics.pyRefmap {
  input {
    String analyse_metrics_do_tpy
    String metrics
    String ref_map
  }
  command <<<
    analyse_metrics.py refmap \
      ~{analyse_metrics_do_tpy} \
      ~{metrics} \
      ~{ref_map}
  >>>
  parameter_meta {
    analyse_metrics_do_tpy: ""
    metrics: ""
    ref_map: ""
  }
}