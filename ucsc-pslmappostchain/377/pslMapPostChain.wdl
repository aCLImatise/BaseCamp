version 1.0

task PslMapPostChain {
  input {
    String post_transmap_chain
    String in_psl
    String out_psl
  }
  command <<<
    pslMapPostChain \
      ~{post_transmap_chain} \
      ~{in_psl} \
      ~{out_psl}
  >>>
  parameter_meta {
    post_transmap_chain: ""
    in_psl: ""
    out_psl: ""
  }
}