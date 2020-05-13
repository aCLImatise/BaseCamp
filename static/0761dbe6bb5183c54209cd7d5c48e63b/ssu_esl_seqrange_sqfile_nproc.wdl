version 1.0

task SsuEslSeqrangeSqfileNproc {
  input {
    String? procProcIdx
    String? nprocNproc
  }
  command <<<
    ssu-esl-seqrange sqfile nproc \
      ~{procProcIdx} \
      ~{nprocNproc}
  >>>
}