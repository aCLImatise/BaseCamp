version 1.0

task UpdateBankPositionsPosfile {
  input {
    String? bankBankName
    String? posPosFile
  }
  command <<<
    updateBankPositions posfile \
      ~{bankBankName} \
      ~{posPosFile}
  >>>
}