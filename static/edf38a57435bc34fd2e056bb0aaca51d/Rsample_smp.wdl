version 1.0

task RsampleSmp {
  input {
    String? rRSample
    String? seqSeqFile
    String? shapefileShapefile
    String? pfsPfsFile
  }
  command <<<
    Rsample-smp \
      ~{rRSample} \
      ~{seqSeqFile} \
      ~{shapefileShapefile} \
      ~{pfsPfsFile}
  >>>
}