version 1.0

task SsueslseqrangeProcidx {
  input {
    String ssu_esl_seq_range
    String sq_file
    String proc_idx
    String nproc
  }
  command <<<
    ssu_esl_seqrange procidx \
      ~{ssu_esl_seq_range} \
      ~{sq_file} \
      ~{proc_idx} \
      ~{nproc}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ssu_esl_seq_range: ""
    sq_file: ""
    proc_idx: ""
    nproc: ""
  }
  output {
    File out_stdout = stdout()
  }
}