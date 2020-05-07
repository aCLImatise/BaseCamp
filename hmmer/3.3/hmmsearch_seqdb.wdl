version 1.0

task HmmsearchSeqdb {
  input {
    String? hmmHmmFile
    String? seqSeqDb
  }
  command <<<
    hmmsearch seqdb \
      ~{hmmHmmFile} \
      ~{seqSeqDb}
  >>>
}