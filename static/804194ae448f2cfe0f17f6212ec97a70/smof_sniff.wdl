version 1.0

task SmofSniff {
  input {
    String input_fasta_sequence
  }
  command <<<
    smof sniff \
      ~{input_fasta_sequence}
  >>>
  parameter_meta {
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}