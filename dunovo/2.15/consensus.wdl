version 1.0

task Consensus.py {
  input {
    String alignment
  }
  command <<<
    consensus.py \
      ~{alignment}
  >>>
  parameter_meta {
    alignment: "The aligned sequences, in FASTA format (but no multi-line sequences)."
  }
}