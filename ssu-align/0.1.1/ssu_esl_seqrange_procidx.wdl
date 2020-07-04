version 1.0

task SsuEslSeqrangeProcidx {
  input {
    String ssu_esl_seq_range
    String sq_file
    String proc_idx
    String nproc
  }
  command <<<
    ssu-esl-seqrange procidx \
      ~{ssu_esl_seq_range} \
      ~{sq_file} \
      ~{proc_idx} \
      ~{nproc}
  >>>
  parameter_meta {
    ssu_esl_seq_range: ""
    sq_file: ""
    proc_idx: ""
    nproc: ""
  }
}