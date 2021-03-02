version 1.0

task ChainToPslBasic {
  input {
    String chain_top_sl
    String in_dot_chain
  }
  command <<<
    chainToPslBasic \
      ~{chain_top_sl} \
      ~{in_dot_chain}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chain_top_sl: ""
    in_dot_chain: ""
  }
  output {
    File out_stdout = stdout()
  }
}