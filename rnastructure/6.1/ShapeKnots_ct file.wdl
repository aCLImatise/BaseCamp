version 1.0

task ShapeKnotsCt file {
  input {
    String? seqSeqFile
    String? ctCtFile
  }
  command <<<
    ShapeKnots ct file \
      ~{seqSeqFile} \
      ~{ctCtFile}
  >>>
}