version 1.0

task GetFisherScores {
  input {
    File? fisher_feature
    Int? null_score_weight_scale
    Int i_modelfile_modelfile
  }
  command <<<
    get_fisher_scores \
      ~{i_modelfile_modelfile} \
      ~{if defined(fisher_feature) then ("-fisher_feature " +  '"' + fisher_feature + '"') else ""} \
      ~{if defined(null_score_weight_scale) then ("-null_score_weight_scale " +  '"' + null_score_weight_scale + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fisher_feature: "|insert|match|match_prior|simple"
    null_score_weight_scale: "(0.0 to disable)"
    i_modelfile_modelfile: "-i model_file  (or -modelfile)"
  }
  output {
    File out_stdout = stdout()
  }
}