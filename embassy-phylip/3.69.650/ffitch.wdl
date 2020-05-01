version 1.0

task Ffitch {
  input {
    Boolean matrixMatrixType
    Boolean mineMineV
    Boolean outOutGrNo
    Boolean powerPower
  }
  command <<<
    ffitch \
      ~{true="-matrixtype" false="" matrixMatrixType} \
      ~{true="-minev" false="" mineMineV} \
      ~{true="-outgrno" false="" outOutGrNo} \
      ~{true="-power" false="" powerPower}
  >>>
}