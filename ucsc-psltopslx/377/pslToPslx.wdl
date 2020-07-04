version 1.0

task PslToPslx {
  input {
    Boolean? masked
    String in_dot_psl
    String q_seq_spec
    String tseq_spec
    String out_dot_psl_x
  }
  command <<<
    pslToPslx \
      ~{in_dot_psl} \
      ~{q_seq_spec} \
      ~{tseq_spec} \
      ~{out_dot_psl_x} \
      ~{true="-masked" false="" masked}
  >>>
  parameter_meta {
    masked: "- if specified, repeats are in lower case cases, otherwise entire sequence is loader case."
    in_dot_psl: ""
    q_seq_spec: ""
    tseq_spec: ""
    out_dot_psl_x: ""
  }
}