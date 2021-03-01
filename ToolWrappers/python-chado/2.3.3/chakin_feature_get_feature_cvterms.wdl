version 1.0

task ChakinFeatureGetFeatureCvterms {
  input {
    String feature_id
  }
  command <<<
    chakin feature get_feature_cvterms \
      ~{feature_id}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    feature_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}