version 1.0

task ChainBridge {
  input {
    String in_dot_chain
    String target_dot_two_bit
    String query_dot_two_bit
    String out_dot_chain
  }
  command <<<
    chainBridge \
      ~{in_dot_chain} \
      ~{target_dot_two_bit} \
      ~{query_dot_two_bit} \
      ~{out_dot_chain}
  >>>
  parameter_meta {
    in_dot_chain: ""
    target_dot_two_bit: ""
    query_dot_two_bit: ""
    out_dot_chain: ""
  }
}