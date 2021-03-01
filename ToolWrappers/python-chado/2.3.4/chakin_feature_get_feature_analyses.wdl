version 1.0

task ChakinFeatureGetFeatureAnalyses {
  input {
    String feature_id
  }
  command <<<
    chakin feature get_feature_analyses \
      ~{feature_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    feature_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}