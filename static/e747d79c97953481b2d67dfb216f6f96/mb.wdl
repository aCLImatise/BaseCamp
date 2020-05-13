version 1.0

task Mb {
  input {
    Boolean iI
    Boolean vV
  }
  command <<<
    mb \
      ~{true="-i" false="" iI} \
      ~{true="-v" false="" vV}
  >>>
}