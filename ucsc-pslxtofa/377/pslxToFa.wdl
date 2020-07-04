version 1.0

task PslxToFa {
  input {
    String in_dot_psl
    String out_dot_fa
  }
  command <<<
    pslxToFa \
      ~{in_dot_psl} \
      ~{out_dot_fa}
  >>>
  parameter_meta {
    in_dot_psl: ""
    out_dot_fa: ""
  }
}