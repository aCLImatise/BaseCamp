version 1.0

task SequenceMatch {
  input {
    String seq_match_main
    String? train_vertical_line_seq_match
    String args
  }
  command <<<
    SequenceMatch \
      ~{seq_match_main} \
      ~{train_vertical_line_seq_match} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seq_match_main: ""
    train_vertical_line_seq_match: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}