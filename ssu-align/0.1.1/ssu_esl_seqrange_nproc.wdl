version 1.0

task SsuEslSeqrangeNproc {
  input {
    String? sqSqFile
    String? procProcIdx
    String? nprocNproc
  }
  command <<<
    ssu-esl-seqrange nproc \
      ~{sqSqFile} \
      ~{procProcIdx} \
      ~{nprocNproc}
  >>>
}