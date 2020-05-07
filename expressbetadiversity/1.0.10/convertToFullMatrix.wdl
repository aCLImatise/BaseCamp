version 1.0

task ConvertToFullMatrix.pyOutputMatrixOutputMatrixOutputMatrix {
  input {
    String? inputInputMatrix
    String? outputOutputMatrix
  }
  command <<<
    convertToFullMatrix.py outputMatrix outputMatrix outputMatrix \
      ~{inputInputMatrix} \
      ~{outputOutputMatrix}
  >>>
}