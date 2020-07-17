version 1.0

task SmofWc {
  input {
    Boolean? chars
    Boolean? lines
    String input_fasta_sequence
  }
  command <<<
    smof wc \
      ~{input_fasta_sequence} \
      ~{true="--chars" false="" chars} \
      ~{true="--lines" false="" lines}
  >>>
  parameter_meta {
    chars: "writes the summed length of all sequences"
    lines: "writes the total number of sequences"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}