version 1.0

task ChainToPslBasic {
  input {
    String chain_top_sl
    String in_dot_chain
    String out_dot_psl
  }
  command <<<
    chainToPslBasic \
      ~{chain_top_sl} \
      ~{in_dot_chain} \
      ~{out_dot_psl}
  >>>
  parameter_meta {
    chain_top_sl: ""
    in_dot_chain: ""
    out_dot_psl: ""
  }
}