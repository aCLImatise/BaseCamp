version 1.0

task EslSeqrangeProcidx {
  input {
    String esl_seq_range
    String sq_file
    String proc_idx
    String nproc
  }
  command <<<
    esl-seqrange procidx \
      ~{esl_seq_range} \
      ~{sq_file} \
      ~{proc_idx} \
      ~{nproc}
  >>>
  parameter_meta {
    esl_seq_range: ""
    sq_file: ""
    proc_idx: ""
    nproc: ""
  }
}