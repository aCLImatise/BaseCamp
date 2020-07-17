version 1.0

task SmofReverse {
  input {
    Boolean? complement
    Boolean? no_validate
    Boolean? preserve_color
    Boolean? force_color
    String input_fasta_sequence
  }
  command <<<
    smof reverse \
      ~{input_fasta_sequence} \
      ~{true="--complement" false="" complement} \
      ~{true="--no-validate" false="" no_validate} \
      ~{true="--preserve-color" false="" preserve_color} \
      ~{true="--force-color" false="" force_color}
  >>>
  parameter_meta {
    complement: "take the reverse complement of the sequence"
    no_validate: "do not check whether the sequence is DNA before reverse complement"
    preserve_color: "Preserve incoming color"
    force_color: "print in color even to non-tty (DANGEROUS)"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}