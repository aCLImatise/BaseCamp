version 1.0

task EslseqrangeNproc {
  input {
    String esl_seq_range
    String sq_file
    String proc_idx
    String nproc
  }
  command <<<
    esl_seqrange nproc \
      ~{esl_seq_range} \
      ~{sq_file} \
      ~{proc_idx} \
      ~{nproc}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easel:0.47--h516909a_0"
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