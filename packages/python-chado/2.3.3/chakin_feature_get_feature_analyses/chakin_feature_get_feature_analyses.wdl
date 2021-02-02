version 1.0

task ChakinFeatureGetFeatureAnalyses {
  input {
    String feature_id
  }
  command <<<
    chakin feature get_feature_analyses \
      ~{feature_id}
  >>>
  parameter_meta {
    feature_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}