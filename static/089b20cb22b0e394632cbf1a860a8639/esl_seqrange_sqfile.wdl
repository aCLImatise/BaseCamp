version 1.0

task EslSeqrangeSqfile {
  input {
    String proc_idx
    String nproc
  }
  command <<<
    esl-seqrange sqfile \
      ~{proc_idx} \
      ~{nproc}
  >>>
  parameter_meta {
    proc_idx: ""
    nproc: ""
  }
}