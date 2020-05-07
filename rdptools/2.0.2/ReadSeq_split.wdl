version 1.0

task ReadSeqSplit {
  input {
    String? seqSeqFileSplitter
    String? inInFile
    String? outdirOutdir
    String? seqSeqPerSplit
  }
  command <<<
    ReadSeq split \
      ~{seqSeqFileSplitter} \
      ~{inInFile} \
      ~{outdirOutdir} \
      ~{seqSeqPerSplit}
  >>>
}