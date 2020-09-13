version 1.0

task RsatSeqproba {
  input {
    String seq_proba
    String jacques_dot_van_helden_backslash_at_univ_am_udot_fr
    String util
    String convert_background_model
  }
  command <<<
    rsat seq_proba \
      ~{seq_proba} \
      ~{jacques_dot_van_helden_backslash_at_univ_am_udot_fr} \
      ~{util} \
      ~{convert_background_model}
  >>>
  parameter_meta {
    seq_proba: "[1mDESCRIPTION[0m"
    jacques_dot_van_helden_backslash_at_univ_am_udot_fr: "[1mCATEGORY[0m"
    util: "[1mUSAGE[0m"
    convert_background_model: "matrix-scan"
  }
  output {
    File out_stdout = stdout()
  }
}