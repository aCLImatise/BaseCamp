version 1.0

task NetToAxt {
  input {
    Boolean? q_chain
    String? max_gap
    String? gap_out
    Boolean? no_split
    String in_dotnet
    String in_dot_chain
    String target_dot_two_bit
    String query_dot_two_bit
    String out_do_tax_t
  }
  command <<<
    netToAxt \
      ~{in_dotnet} \
      ~{in_dot_chain} \
      ~{target_dot_two_bit} \
      ~{query_dot_two_bit} \
      ~{out_do_tax_t} \
      ~{true="-qChain" false="" q_chain} \
      ~{if defined(max_gap) then ("-maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(gap_out) then ("-gapOut " +  '"' + gap_out + '"') else ""} \
      ~{true="-noSplit" false="" no_split}
  >>>
  parameter_meta {
    q_chain: "- net is with respect to the q side of chains."
    max_gap: "- maximum size of gap before breaking. Default 100"
    gap_out: "- Output gap sizes to file"
    no_split: "- Don't split chain when there is an insertion of another chain"
    in_dotnet: ""
    in_dot_chain: ""
    target_dot_two_bit: ""
    query_dot_two_bit: ""
    out_do_tax_t: ""
  }
}