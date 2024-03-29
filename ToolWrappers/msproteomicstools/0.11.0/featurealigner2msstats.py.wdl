version 1.0

task Featurealigner2msstatspy {
  input {
    Int align_two_ms_stats_do_tpy
    String input_feature_alignment_dot_tsv
  }
  command <<<
    featurealigner2msstats_py \
      ~{align_two_ms_stats_do_tpy} \
      ~{input_feature_alignment_dot_tsv}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1"
  }
  parameter_meta {
    align_two_ms_stats_do_tpy: ""
    input_feature_alignment_dot_tsv: ""
  }
  output {
    File out_stdout = stdout()
  }
}