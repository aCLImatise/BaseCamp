version 1.0

task EslseqrangeSqfile {
  input {
    String proc_idx
    String nproc
  }
  command <<<
    esl_seqrange sqfile \
      ~{proc_idx} \
      ~{nproc}
  >>>
  parameter_meta {
    proc_idx: ""
    nproc: ""
  }
  output {
    File out_stdout = stdout()
  }
}