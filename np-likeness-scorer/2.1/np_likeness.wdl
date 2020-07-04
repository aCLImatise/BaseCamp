version 1.0

task NpLikeness {
  input {
    String var_0
    String product_likeness
    String calculator
    String v_two_dot_one
    String calculates
    String var_5
  }
  command <<<
    np-likeness \
      ~{var_0} \
      ~{product_likeness} \
      ~{calculator} \
      ~{v_two_dot_one} \
      ~{calculates} \
      ~{var_5}
  >>>
  parameter_meta {
    var_0: ""
    product_likeness: ""
    calculator: ""
    v_two_dot_one: ""
    calculates: ""
    var_5: ""
  }
}