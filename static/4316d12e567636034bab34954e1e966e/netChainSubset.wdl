version 1.0

task NetChainSubset {
  input {
    String in_dotnet
    String in_dot_chain
    String out_dot_chain
  }
  command <<<
    netChainSubset \
      ~{in_dotnet} \
      ~{in_dot_chain} \
      ~{out_dot_chain}
  >>>
  parameter_meta {
    in_dotnet: ""
    in_dot_chain: ""
    out_dot_chain: ""
  }
}