version 1.0

task BpSeqLength.pl {
  input {
    Boolean fF
  }
  command <<<
    bp_seq_length.pl \
      ~{true="-f" false="" fF}
  >>>
}