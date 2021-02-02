version 1.0

task Enano {
  input {
    Boolean? use_compresion_default
    Int? base_sequence_context
    Int? length_dna_sequence
  }
  command <<<
    enano \
      ~{if (use_compresion_default) then "-c" else ""} \
      ~{if defined(base_sequence_context) then ("-k " +  '"' + base_sequence_context + '"') else ""} \
      ~{if defined(length_dna_sequence) then ("-l " +  '"' + length_dna_sequence + '"') else ""}
  >>>
  parameter_meta {
    use_compresion_default: "To use MAX COMPRESION MODE. Default is FAST MODE."
    base_sequence_context: "Base sequence context length. Default is 7 (max 13)."
    length_dna_sequence: "Length of the DNA sequence context. Default is 6."
  }
  output {
    File out_stdout = stdout()
  }
}