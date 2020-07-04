version 1.0

task AxtToPsl {
  input {
    String in_do_tax_t
    String t_sizes
    String q_sizes
    String out_dot_psl
  }
  command <<<
    axtToPsl \
      ~{in_do_tax_t} \
      ~{t_sizes} \
      ~{q_sizes} \
      ~{out_dot_psl}
  >>>
  parameter_meta {
    in_do_tax_t: ""
    t_sizes: ""
    q_sizes: ""
    out_dot_psl: ""
  }
}