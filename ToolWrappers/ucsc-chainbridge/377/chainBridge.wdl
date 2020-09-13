version 1.0

task ChainBridge {
  input {
    Int? max_gap
    File? score_scheme
    File? linear_gap
    String in_dot_chain
    Float target_dot_two_bit
    Float query_dot_two_bit
  }
  command <<<
    chainBridge \
      ~{in_dot_chain} \
      ~{target_dot_two_bit} \
      ~{query_dot_two_bit} \
      ~{if defined(max_gap) then ("-maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(score_scheme) then ("-scoreScheme " +  '"' + score_scheme + '"') else ""} \
      ~{if defined(linear_gap) then ("-linearGap " +  '"' + linear_gap + '"') else ""}
  >>>
  parameter_meta {
    max_gap: "Maximum size of double-sided gap to try to bridge (default: 6000)\\nNote: there is no size limit for exact sequence matches"
    score_scheme: "Read the scoring matrix from a blastz-format file"
    linear_gap: "Specify type of linearGap to use.\\nloose is chicken/human linear gap costs.\\nmedium is mouse/human linear gap costs.\\nOr specify a piecewise linearGap tab delimited file.\\n(default: loose)\\n"
    in_dot_chain: ""
    target_dot_two_bit: ""
    query_dot_two_bit: ""
  }
  output {
    File out_stdout = stdout()
  }
}