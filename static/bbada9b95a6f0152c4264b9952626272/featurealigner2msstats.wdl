version 1.0

task Featurealigner2msstats.py {
  input {
    String align_two_ms_stats_do_tpy
    String input_feature_alignment_dot_tsv
  }
  command <<<
    featurealigner2msstats.py \
      ~{align_two_ms_stats_do_tpy} \
      ~{input_feature_alignment_dot_tsv}
  >>>
  parameter_meta {
    align_two_ms_stats_do_tpy: ""
    input_feature_alignment_dot_tsv: ""
  }
}