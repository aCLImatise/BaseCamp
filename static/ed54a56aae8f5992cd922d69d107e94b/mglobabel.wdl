version 1.0

task Mglobabel {
  input {
    Boolean? i
    Boolean? var_1
    Boolean? var_2
    String o_babel
    String? input_type
    String in_filename
    String? output_type
    String out_filename
  }
  command <<<
    mglobabel \
      ~{o_babel} \
      ~{input_type} \
      ~{in_filename} \
      ~{output_type} \
      ~{out_filename} \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" var_1} \
      ~{true="-O" false="" var_2}
  >>>
  parameter_meta {
    i: ""
    var_1: ""
    var_2: ""
    o_babel: ""
    input_type: ""
    in_filename: ""
    output_type: ""
    out_filename: ""
  }
}