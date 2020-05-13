version 1.0

task HmmsearchHmmfile {
  input {
    String? seqSeqDb
  }
  command <<<
    hmmsearch hmmfile \
      ~{seqSeqDb}
  >>>
}