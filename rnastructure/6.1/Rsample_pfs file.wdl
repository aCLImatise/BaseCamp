version 1.0

task RsamplePfs file {
  input {
    String? seqSeqFile
    String? shapefileShapefile
    String? pfsPfsFile
  }
  command <<<
    Rsample pfs file \
      ~{seqSeqFile} \
      ~{shapefileShapefile} \
      ~{pfsPfsFile}
  >>>
}