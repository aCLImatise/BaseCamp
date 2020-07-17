version 1.0

task Seq2profile.pl {
  input {
    String consensus_sequence
  }
  command <<<
    seq2profile.pl \
      ~{consensus_sequence}
  >>>
  parameter_meta {
    consensus_sequence: ""
  }
}