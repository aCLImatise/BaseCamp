version 1.0

task Merfishtools {
  input {
    Boolean vV
  }
  command <<<
    merfishtools \
      ~{true="-v" false="" vV}
  >>>
}