version 1.0

task Mglbabel {
  input {
    Boolean? i
    Boolean? o
    String babel
    String? input_type
    String var_4
    String? output_type
    String var_6
  }
  command <<<
    mglbabel \
      ~{babel} \
      ~{input_type} \
      ~{var_4} \
      ~{output_type} \
      ~{var_6} \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    i: ""
    o: ""
    babel: ""
    input_type: ""
    var_4: ""
    output_type: ""
    var_6: ""
  }
}