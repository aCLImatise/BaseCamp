version 1.0

task SsuEslSeqrangeSqfileProcidx {
  input {
    String? nprocNproc
  }
  command <<<
    ssu-esl-seqrange sqfile procidx \
      ~{nprocNproc}
  >>>
}