version 1.0

task FormatFasta {
  input {
    String? input_fast_a
    String? output_fast_a
  }
  command <<<
    format_fasta \
      ~{if defined(input_fast_a) then ("--inputfasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_fast_a) then ("--outputfasta " +  '"' + output_fast_a + '"') else ""}
  >>>
  parameter_meta {
    input_fast_a: "Path to input fasta."
    output_fast_a: "Path to output fasta."
  }
}