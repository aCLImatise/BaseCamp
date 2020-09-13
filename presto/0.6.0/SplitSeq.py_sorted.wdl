version 1.0

task SplitSeqpySorted {
  input {
    String split_seq_do_tpy
  }
  command <<<
    SplitSeq_py sorted \
      ~{split_seq_do_tpy}
  >>>
  parameter_meta {
    split_seq_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}