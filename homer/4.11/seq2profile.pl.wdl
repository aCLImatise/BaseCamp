version 1.0

task Seq2profilepl {
  input {
    String consensus_sequence
  }
  command <<<
    seq2profile_pl \
      ~{consensus_sequence}
  >>>
  parameter_meta {
    consensus_sequence: ""
  }
  output {
    File out_stdout = stdout()
  }
}