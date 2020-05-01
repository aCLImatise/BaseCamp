version 1.0

task Fkitsch {
  input {
    Boolean matrixMatrixType
    Boolean mineMineV
  }
  command <<<
    fkitsch \
      ~{true="-matrixtype" false="" matrixMatrixType} \
      ~{true="-minev" false="" mineMineV}
  >>>
}