version 1.0

task RsatReversecomplement {
  input {
    String reverse_complement
    String sequences
    String jacques_dot_van_helden_backslash_at_univ_am_udot_fr
    String util
  }
  command <<<
    rsat reverse_complement \
      ~{reverse_complement} \
      ~{sequences} \
      ~{jacques_dot_van_helden_backslash_at_univ_am_udot_fr} \
      ~{util}
  >>>
  parameter_meta {
    reverse_complement: "[1mDESCRIPTION[0m"
    sequences: "[1mAUTHORS[0m"
    jacques_dot_van_helden_backslash_at_univ_am_udot_fr: "[1mCATEGORY[0m"
    util: "[1mUSAGE[0m"
  }
  output {
    File out_stdout = stdout()
  }
}