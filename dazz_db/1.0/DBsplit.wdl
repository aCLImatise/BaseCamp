version 1.0

task DBsplit {
  input {
    Boolean? a
    Boolean? x
    Int? var_int
  }
  command <<<
    DBsplit \
      ~{var_int} \
      ~{true="-a" false="" a} \
      ~{true="-x" false="" x}
  >>>
  parameter_meta {
    a: ""
    x: ""
    var_int: ""
  }
}