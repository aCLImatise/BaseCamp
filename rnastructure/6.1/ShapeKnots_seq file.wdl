version 1.0

task ShapeKnotsSeq file {
  input {
    String? ctCtFile
  }
  command <<<
    ShapeKnots seq file \
      ~{ctCtFile}
  >>>
}