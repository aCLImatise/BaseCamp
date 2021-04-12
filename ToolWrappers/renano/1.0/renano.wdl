version 1.0

task Renano {
  input {
    Boolean? use_mode_default
    Int? base_call_sequence
    Int? length_dna_neighborhood
  }
  command <<<
    renano \
      ~{if (use_mode_default) then "-c" else ""} \
      ~{if defined(base_call_sequence) then ("-k " +  '"' + base_call_sequence + '"') else ""} \
      ~{if defined(length_dna_neighborhood) then ("-l " +  '"' + length_dna_neighborhood + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/renano:1.0--h9a82719_0"
  }
  parameter_meta {
    use_mode_default: "To use MAX COMPRESION MODE. Default is FAST MODE."
    base_call_sequence: "Base call sequence context length. Default is 7 (max 13)."
    length_dna_neighborhood: "Length of the DNA neighborhood sequence. Default is 6."
  }
  output {
    File out_stdout = stdout()
  }
}