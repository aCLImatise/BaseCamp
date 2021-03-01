version 1.0

task SmofReverse {
  input {
    String? set_extended_alphabet
    Boolean? complement
    Boolean? no_validate
    Boolean? preserve_color
    Boolean? force_color
    String input_fasta_sequence
  }
  command <<<
    smof reverse \
      ~{input_fasta_sequence} \
      ~{if defined(set_extended_alphabet) then ("-c " +  '"' + set_extended_alphabet + '"') else ""} \
      ~{if (complement) then "--complement" else ""} \
      ~{if (no_validate) then "--no-validate" else ""} \
      ~{if (preserve_color) then "--preserve-color" else ""} \
      ~{if (force_color) then "--force-color" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_extended_alphabet: "is set. The extended nucleotide alphabet is supported."
    complement: "take the reverse complement of the sequence"
    no_validate: "do not check whether the sequence is DNA before\\nreverse complement"
    preserve_color: "Preserve incoming color"
    force_color: "print in color even to non-tty (DANGEROUS)"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}