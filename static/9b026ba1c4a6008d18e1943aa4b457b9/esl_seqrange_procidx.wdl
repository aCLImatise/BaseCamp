version 1.0

task EslSeqrangeProcidx {
  input {
    String? sqSqFile
    String? procProcIdx
    String? nprocNproc
  }
  command <<<
    esl-seqrange procidx \
      ~{sqSqFile} \
      ~{procProcIdx} \
      ~{nprocNproc}
  >>>
}