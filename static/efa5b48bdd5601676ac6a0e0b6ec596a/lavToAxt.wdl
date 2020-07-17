version 1.0

task LavToAxt {
  input {
    String in_dot_lav
    String t_nib_dir
    String q_nib_dir
    String out_do_tax_t
  }
  command <<<
    lavToAxt \
      ~{in_dot_lav} \
      ~{t_nib_dir} \
      ~{q_nib_dir} \
      ~{out_do_tax_t}
  >>>
  parameter_meta {
    in_dot_lav: ""
    t_nib_dir: ""
    q_nib_dir: ""
    out_do_tax_t: ""
  }
}