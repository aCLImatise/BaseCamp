version 1.0

task EslSeqrangeNproc {
  input {
    String? sqSqFile
    String? procProcIdx
    String? nprocNproc
  }
  command <<<
    esl-seqrange nproc \
      ~{sqSqFile} \
      ~{procProcIdx} \
      ~{nprocNproc}
  >>>
}