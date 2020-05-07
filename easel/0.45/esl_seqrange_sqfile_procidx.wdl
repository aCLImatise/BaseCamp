version 1.0

task EslSeqrangeSqfileProcidx {
  input {
    String? nprocNproc
  }
  command <<<
    esl-seqrange sqfile procidx \
      ~{nprocNproc}
  >>>
}