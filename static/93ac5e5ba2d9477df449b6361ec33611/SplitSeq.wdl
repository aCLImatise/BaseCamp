version 1.0

task SplitSeq.pySelected {
  input {
    String split_seq_do_tpy
  }
  command <<<
    SplitSeq.py selected \
      ~{split_seq_do_tpy}
  >>>
  parameter_meta {
    split_seq_do_tpy: ""
  }
}