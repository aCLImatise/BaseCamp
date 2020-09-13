version 1.0

task ChainSwap {
  input {
    String in_dot_chain
  }
  command <<<
    chainSwap \
      ~{in_dot_chain}
  >>>
  parameter_meta {
    in_dot_chain: ""
  }
  output {
    File out_stdout = stdout()
  }
}