version 1.0

task NetToAxt {
  input {
    Boolean? q_chain
    Int? max_gap
    File? gap_out
    Boolean? no_split
    String in_dotnet
    String in_dot_chain
    Float target_dot_two_bit
    Float query_dot_two_bit
  }
  command <<<
    netToAxt \
      ~{in_dotnet} \
      ~{in_dot_chain} \
      ~{target_dot_two_bit} \
      ~{query_dot_two_bit} \
      ~{if (q_chain) then "-qChain" else ""} \
      ~{if defined(max_gap) then ("-maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(gap_out) then ("-gapOut " +  '"' + gap_out + '"') else ""} \
      ~{if (no_split) then "-noSplit" else ""}
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
  }
  output {
    File out_stdout = stdout()
    File out_gap_out = "${in_gap_out}"
  }
}