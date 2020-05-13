version 1.0

task ShapeKnotsSmp {
  input {
    String? shapeShapeKnots
    String? seqSeqFile
    String? ctCtFile
  }
  command <<<
    ShapeKnots-smp \
      ~{shapeShapeKnots} \
      ~{seqSeqFile} \
      ~{ctCtFile}
  >>>
}