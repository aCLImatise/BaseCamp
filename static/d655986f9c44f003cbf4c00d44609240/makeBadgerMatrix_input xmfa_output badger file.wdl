version 1.0

task MakeBadgerMatrixInput xmfaOutput badger file {
  input {
    String? lcbLcbCoordinateFile
  }
  command <<<
    makeBadgerMatrix input xmfa output badger file \
      ~{lcbLcbCoordinateFile}
  >>>
}