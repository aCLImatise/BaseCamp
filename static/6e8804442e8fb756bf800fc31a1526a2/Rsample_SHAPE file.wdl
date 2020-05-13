version 1.0

task RsampleSHAPE file {
  input {
    String? seqSeqFile
    String? shapefileShapefile
    String? pfsPfsFile
  }
  command <<<
    Rsample SHAPE file \
      ~{seqSeqFile} \
      ~{shapefileShapefile} \
      ~{pfsPfsFile}
  >>>
}