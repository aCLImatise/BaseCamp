version 1.0

task DAStrim {
  input {
    Boolean? v
    Boolean? g
    Boolean? b
    Int var_3
    Int var_4
  }
  command <<<
    DAStrim \
      ~{var_3} \
      ~{var_4} \
      ~{true="-v" false="" v} \
      ~{true="-g" false="" g} \
      ~{true="-b" false="" b}
  >>>
  parameter_meta {
    v: ""
    g: ""
    b: ""
    var_3: ""
    var_4: ""
  }
}