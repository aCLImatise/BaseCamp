version 1.0

task AnalyseMetrics.pyRefmap {
  input {
    String? metricsMetrics
    String? refRefMap
  }
  command <<<
    analyse_metrics.py refmap \
      ~{metricsMetrics} \
      ~{refRefMap}
  >>>
}