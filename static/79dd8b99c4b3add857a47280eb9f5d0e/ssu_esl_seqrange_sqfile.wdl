version 1.0

task SsuEslSeqrangeSqfile {
  input {
    String proc_idx
    String nproc
  }
  command <<<
    ssu-esl-seqrange sqfile \
      ~{proc_idx} \
      ~{nproc}
  >>>
  parameter_meta {
    proc_idx: ""
    nproc: ""
  }
}