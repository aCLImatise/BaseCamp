version 1.0

task PslRecalcMatch {
  input {
    Boolean? ignore_q_missing
    String in_dot_psl
    String target_seq
    String query_seq
    String out_dot_psl
  }
  command <<<
    pslRecalcMatch \
      ~{in_dot_psl} \
      ~{target_seq} \
      ~{query_seq} \
      ~{out_dot_psl} \
      ~{true="-ignoreQMissing" false="" ignore_q_missing}
  >>>
  parameter_meta {
    ignore_q_missing: "- pass through the record if querySeq doesn't include qName"
    in_dot_psl: ""
    target_seq: ""
    query_seq: ""
    out_dot_psl: ""
  }
}