version 1.0

task _fcontml {
  input {
    Boolean datatypeDatatype
  }
  command <<<
    _fcontml \
      ~{true="-datatype" false="" datatypeDatatype}
  >>>
}