version 1.0

task MakeBadgerMatrixOutput badger file {
  input {
    String? inputInputXMfa
    String? outputOutputBadgerFile
    String? lcbLcbCoordinateFile
  }
  command <<<
    makeBadgerMatrix output badger file \
      ~{inputInputXMfa} \
      ~{outputOutputBadgerFile} \
      ~{lcbLcbCoordinateFile}
  >>>
}