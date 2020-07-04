version 1.0

task ChainStitchId {
  input {
    String in_dot_chain
    String out_dot_chain
  }
  command <<<
    chainStitchId \
      ~{in_dot_chain} \
      ~{out_dot_chain}
  >>>
  parameter_meta {
    in_dot_chain: ""
    out_dot_chain: ""
  }
}