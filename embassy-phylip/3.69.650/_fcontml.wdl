version 1.0

task _fcontml {
  input {
    Boolean? datatype
  }
  command <<<
    _fcontml \
      ~{true="-datatype" false="" datatype}
  >>>
  parameter_meta {
    datatype: "menu       [g] Input type in infile (Values: g (Gene frequencies); i (Continuous characters))"
  }
}