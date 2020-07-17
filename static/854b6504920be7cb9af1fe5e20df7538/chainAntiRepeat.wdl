version 1.0

task ChainAntiRepeat {
  input {
    String? min_score
    String? no_check_score
    String t_nib_dir
    String q_nib_dir
    String in_chain
    String out_chain
  }
  command <<<
    chainAntiRepeat \
      ~{t_nib_dir} \
      ~{q_nib_dir} \
      ~{in_chain} \
      ~{out_chain} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(no_check_score) then ("-noCheckScore " +  '"' + no_check_score + '"') else ""}
  >>>
  parameter_meta {
    min_score: "- minimum score (after repeat stuff) to pass"
    no_check_score: "- score that will pass without checks (speed tweak)"
    t_nib_dir: ""
    q_nib_dir: ""
    in_chain: ""
    out_chain: ""
  }
}