version 1.0

task TraitarNew {
  input {
    String hmm_model_f
    String archive_name
  }
  command <<<
    traitar new \
      ~{hmm_model_f} \
      ~{archive_name}
  >>>
  parameter_meta {
    hmm_model_f: "hmm database compatible with the phenotype archive"
    archive_name: "name of the model, which is created"
  }
}