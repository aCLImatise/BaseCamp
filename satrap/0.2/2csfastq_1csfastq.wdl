version 1.0

task 2csfastq1csfastq {
  input {
    String? cs_fast_q_one
    String? cs_fast_q_two
    String? tags
    String? tone
    String? t_two
    Boolean? double_encoded
    String tag_two
  }
  command <<<
    2csfastq_1csfastq \
      ~{tag_two} \
      ~{if defined(cs_fast_q_one) then ("-csfastq1 " +  '"' + cs_fast_q_one + '"') else ""} \
      ~{if defined(cs_fast_q_two) then ("-csfastq2 " +  '"' + cs_fast_q_two + '"') else ""} \
      ~{if defined(tags) then ("-tags " +  '"' + tags + '"') else ""} \
      ~{if defined(tone) then ("-t1 " +  '"' + tone + '"') else ""} \
      ~{if defined(t_two) then ("-t2 " +  '"' + t_two + '"') else ""} \
      ~{true="-double-encoded" false="" double_encoded}
  >>>
  parameter_meta {
    cs_fast_q_one: ""
    cs_fast_q_two: ""
    tags: ""
    tone: ""
    t_two: ""
    double_encoded: ""
    tag_two: ""
  }
}