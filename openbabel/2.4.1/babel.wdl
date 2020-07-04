version 1.0

task Babel {
  input {
    Boolean? i
    Boolean? o
    String? input_type
    String var_3
    String? output_type
    String var_5
  }
  command <<<
    babel \
      ~{input_type} \
      ~{var_3} \
      ~{output_type} \
      ~{var_5} \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    i: ""
    o: ""
    input_type: ""
    var_3: ""
    output_type: ""
    var_5: ""
  }
}