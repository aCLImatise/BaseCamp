version 1.0

task TraitarNew {
  input {
    String models_dir
    Int pf_acc_two_desc
    String accessions
    String hmm_model_f
    String archive_name
  }
  command <<<
    traitar new \
      ~{models_dir} \
      ~{pf_acc_two_desc} \
      ~{accessions} \
      ~{hmm_model_f} \
      ~{archive_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    models_dir: "directory with phenotype models to be included"
    pf_acc_two_desc: "a mapping between Pfam families and phenotype ids to"
    accessions: "pt_id2acc_desc  a mapping between phenotype ids and descriptions"
    hmm_model_f: "hmm database compatible with the phenotype archive"
    archive_name: "name of the model, which is created"
  }
  output {
    File out_stdout = stdout()
  }
}