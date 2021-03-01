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
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    feature_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}