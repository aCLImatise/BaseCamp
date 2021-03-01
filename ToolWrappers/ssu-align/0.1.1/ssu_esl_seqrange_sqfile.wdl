version 1.0

task SsueslseqrangeSqfile {
  input {
    String proc_idx
    String nproc
  }
  command <<<
    ssu_esl_seqrange sqfile \
      ~{proc_idx} \
      ~{nproc}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    proc_idx: ""
    nproc: ""
  }
  output {
    File out_stdout = stdout()
  }
}