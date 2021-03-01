version 1.0

task SplitSeqpySelected {
  input {
    String split_seq_do_tpy
  }
  command <<<
    SplitSeq_py selected \
      ~{split_seq_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    split_seq_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}