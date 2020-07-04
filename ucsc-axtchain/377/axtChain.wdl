version 1.0

task AxtChain {
  input {
    String? linear_gap
    String in_do_tax_t
    String t_nib_dir
    String q_nib_dir
    String out_dot_chain
  }
  command <<<
    axtChain \
      ~{in_do_tax_t} \
      ~{t_nib_dir} \
      ~{q_nib_dir} \
      ~{out_dot_chain} \
      ~{if defined(linear_gap) then ("-linearGap " +  '"' + linear_gap + '"') else ""}
  >>>
  parameter_meta {
    linear_gap: ""
    in_do_tax_t: ""
    t_nib_dir: ""
    q_nib_dir: ""
    out_dot_chain: ""
  }
}