version 1.0

task _ffitch {
  input {
    Boolean matrixMatrixType
    Boolean mineMineV
    Boolean outOutGrNo
    Boolean powerPower
  }
  command <<<
    _ffitch \
      ~{true="-matrixtype" false="" matrixMatrixType} \
      ~{true="-minev" false="" mineMineV} \
      ~{true="-outgrno" false="" outOutGrNo} \
      ~{true="-power" false="" powerPower}
  >>>
}