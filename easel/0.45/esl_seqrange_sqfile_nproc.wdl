version 1.0

task EslSeqrangeSqfileNproc {
  input {
    String? procProcIdx
    String? nprocNproc
  }
  command <<<
    esl-seqrange sqfile nproc \
      ~{procProcIdx} \
      ~{nprocNproc}
  >>>
}