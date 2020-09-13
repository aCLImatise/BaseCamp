version 1.0

task GetFisherScores {
  input {
    File? db
    String? prior_library
    String? i
    String? fisher_feature
    Int? null_score_weight_scale
    Int? rdb
    Int? write_dist
    Int i_modelfile_modelfile
  }
  command <<<
    get_fisher_scores \
      ~{i_modelfile_modelfile} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(prior_library) then ("-prior_library " +  '"' + prior_library + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(fisher_feature) then ("-fisher_feature " +  '"' + fisher_feature + '"') else ""} \
      ~{if defined(null_score_weight_scale) then ("-null_score_weight_scale " +  '"' + null_score_weight_scale + '"') else ""} \
      ~{if defined(rdb) then ("-rdb " +  '"' + rdb + '"') else ""} \
      ~{if defined(write_dist) then ("-write_dist " +  '"' + write_dist + '"') else ""}
  >>>
  parameter_meta {
    db: ""
    prior_library: ""
    i: ""
    fisher_feature: "|insert|match|match_prior|simple"
    null_score_weight_scale: "(0.0 to disable)"
    rdb: ""
    write_dist: ""
    i_modelfile_modelfile: "-i model_file  (or -modelfile)"
  }
  output {
    File out_stdout = stdout()
  }
}