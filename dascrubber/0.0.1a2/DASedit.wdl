version 1.0

task DASedit {
  input {
    Boolean? v
    Boolean? x
    Int? var_int
  }
  command <<<
    DASedit \
      ~{var_int} \
      ~{true="-v" false="" v} \
      ~{true="-x" false="" x}
  >>>
  parameter_meta {
    v: ""
    x: ""
    var_int: ""
  }
}