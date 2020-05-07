version 1.0

task Fcontml {
  input {
    Boolean datatypeDatatype
  }
  command <<<
    fcontml \
      ~{true="-datatype" false="" datatypeDatatype}
  >>>
}