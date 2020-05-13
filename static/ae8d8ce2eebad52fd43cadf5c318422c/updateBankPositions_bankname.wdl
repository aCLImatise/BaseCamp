version 1.0

task UpdateBankPositionsBankname {
  input {
    String? posPosFile
  }
  command <<<
    updateBankPositions bankname \
      ~{posPosFile}
  >>>
}