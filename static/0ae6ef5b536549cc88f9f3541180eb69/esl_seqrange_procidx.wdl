version 1.0

task EslseqrangeProcidx {
  input {
    String esl_seq_range
    String sq_file
    String proc_idx
    String nproc
  }
  command <<<
    esl_seqrange procidx \
      ~{esl_seq_range} \
      ~{sq_file} \
      ~{proc_idx} \
      ~{nproc}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    esl_seq_range: ""
    sq_file: ""
    proc_idx: ""
    nproc: ""
  }
  output {
    File out_stdout = stdout()
  }
}