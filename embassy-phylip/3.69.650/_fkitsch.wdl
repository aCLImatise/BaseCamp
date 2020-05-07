version 1.0

task _fkitsch {
  input {
    Boolean matrixMatrixType
    Boolean mineMineV
  }
  command <<<
    _fkitsch \
      ~{true="-matrixtype" false="" matrixMatrixType} \
      ~{true="-minev" false="" mineMineV}
  >>>
}