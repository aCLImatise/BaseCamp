version 1.0

task MakeBadgerMatrixInput xmfaLCB coordinate file {
  input {
    String? outputOutputBadgerFile
    String? lcbLcbCoordinateFile
  }
  command <<<
    makeBadgerMatrix input xmfa LCB coordinate file \
      ~{outputOutputBadgerFile} \
      ~{lcbLcbCoordinateFile}
  >>>
}