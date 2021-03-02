version 1.0

task AnalyseMetricspyRefmap {
  input {
    String analyse_metrics_do_tpy
    String metrics
    String ref_map
  }
  command <<<
    analyse_metrics_py refmap \
      ~{analyse_metrics_do_tpy} \
      ~{metrics} \
      ~{ref_map}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    analyse_metrics_do_tpy: ""
    metrics: ""
    ref_map: ""
  }
  output {
    File out_stdout = stdout()
  }
}