version 1.0

task GetFisherScores {
  input {
    File? modelfiledb_seqfilepriorlibrary_priori
  }
  command <<<
    get_fisher_scores \
      ~{if defined(modelfiledb_seqfilepriorlibrary_priori) then ("-i " +  '"' + modelfiledb_seqfilepriorlibrary_priori + '"') else ""}
  >>>
  parameter_meta {
    modelfiledb_seqfilepriorlibrary_priori: "(or -modelfile)\\n-db seq_file\\n-prior_library prior\\n-i model\\n-fisher_feature trans|insert|match|match_prior|simple\\n-null_score_weight_scale 10.0 (0.0 to disable)\\n-rdb 0\\n-write_dist 0"
  }
  output {
    File out_stdout = stdout()
  }
}