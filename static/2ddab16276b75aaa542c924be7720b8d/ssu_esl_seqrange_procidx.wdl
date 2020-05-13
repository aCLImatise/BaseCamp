version 1.0

task SsuEslSeqrangeProcidx {
  input {
    String? sqSqFile
    String? procProcIdx
    String? nprocNproc
  }
  command <<<
    ssu-esl-seqrange procidx \
      ~{sqSqFile} \
      ~{procProcIdx} \
      ~{nprocNproc}
  >>>
}