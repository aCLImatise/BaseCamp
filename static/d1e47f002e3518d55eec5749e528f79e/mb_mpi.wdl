version 1.0

task MbMpi {
  input {
    Boolean iI
    Boolean vV
  }
  command <<<
    mb-mpi \
      ~{true="-i" false="" iI} \
      ~{true="-v" false="" vV}
  >>>
}