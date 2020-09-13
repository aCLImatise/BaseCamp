version 1.0

task PslToPslx {
  input {
    Boolean? masked
    String in_dot_psl
    String q_seq_spec
    String tseq_spec
  }
  command <<<
    pslToPslx \
      ~{in_dot_psl} \
      ~{q_seq_spec} \
      ~{tseq_spec} \
      ~{if (masked) then "-masked" else ""}
  >>>
  parameter_meta {
    masked: "- if specified, repeats are in lower case cases, otherwise entire\\nsequence is loader case.\\n"
    in_dot_psl: ""
    q_seq_spec: ""
    tseq_spec: ""
  }
  output {
    File out_stdout = stdout()
  }
}