version 1.0

task ReadSeqToFastq {
  input {
    String? toToFastQ
    String? seqSeqFile
    String? qualQualFile
  }
  command <<<
    ReadSeq to-fastq \
      ~{toToFastQ} \
      ~{seqSeqFile} \
      ~{qualQualFile}
  >>>
}