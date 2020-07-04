version 1.0

task SmofCut {
  input {
    String? fields
    Boolean? complement
    String input_fasta_sequence
  }
  command <<<
    smof cut \
      ~{input_fasta_sequence} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{true="--complement" false="" complement}
  >>>
  parameter_meta {
    fields: "Indices to print, comma delimited, with ranges"
    complement: "Invert selection"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}