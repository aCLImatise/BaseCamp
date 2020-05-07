version 1.0

task REQ {
  input {
    Boolean vV
  }
  command <<<
    REQ \
      ~{true="-v" false="" vV}
  >>>
}