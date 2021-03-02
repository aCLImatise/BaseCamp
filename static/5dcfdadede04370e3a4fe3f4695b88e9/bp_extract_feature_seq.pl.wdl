version 1.0

task BpExtractFeatureSeqpl {
  command <<<
    bp_extract_feature_seq_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}