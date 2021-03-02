version 1.0

task ChakinFeatureLoadFeatureprops {
  input {
    String? feature_type
    Boolean? match_on_name
    String unique_name
  }
  command <<<
    chakin feature load_featureprops \
      ~{unique_name} \
      ~{if defined(feature_type) then ("--feature_type " +  '"' + feature_type + '"') else ""} \
      ~{if (match_on_name) then "--match_on_name" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    feature_type: "Type of the target features in sequence ontology (will\\nspeed up loading if specified)"
    match_on_name: "Match features using their name instead of their"
    unique_name: "-h, --help           Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}