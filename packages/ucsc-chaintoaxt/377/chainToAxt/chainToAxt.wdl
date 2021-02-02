version 1.0

task ChainToAxt {
  input {
    Int? max_gap
    Int? max_chain
    String? min_score
    String? mini_d
    Boolean? bed
    String in_dot_chain
    Int t_nib_dir_or_two_bit
    Int q_nib_dir_or_two_bit
  }
  command <<<
    chainToAxt \
      ~{in_dot_chain} \
      ~{t_nib_dir_or_two_bit} \
      ~{q_nib_dir_or_two_bit} \
      ~{if defined(max_gap) then ("-maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(max_chain) then ("-maxChain " +  '"' + max_chain + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(mini_d) then ("-minId " +  '"' + mini_d + '"') else ""} \
      ~{if (bed) then "-bed" else ""}
  >>>
  parameter_meta {
    max_gap: "gap sized allowed without breaking, default 100"
    max_chain: "chain size allowed without breaking, default 1073741823"
    min_score: "score of chain"
    mini_d: "percentage ID within blocks"
    bed: "Output bed instead of axt"
    in_dot_chain: ""
    t_nib_dir_or_two_bit: ""
    q_nib_dir_or_two_bit: ""
  }
  output {
    File out_stdout = stdout()
  }
}