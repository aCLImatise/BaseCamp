version 1.0

task MakeBadgerMatrixLCB coordinate file {
  input {
    String? inputInputXMfa
    String? outputOutputBadgerFile
    String? lcbLcbCoordinateFile
  }
  command <<<
    makeBadgerMatrix LCB coordinate file \
      ~{inputInputXMfa} \
      ~{outputOutputBadgerFile} \
      ~{lcbLcbCoordinateFile}
  >>>
}