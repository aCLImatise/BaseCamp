version 1.0

task FormatFasta {
  input {
    File? input_fast_a
    File? output_fast_a
  }
  command <<<
    format_fasta \
      ~{if defined(input_fast_a) then ("--inputfasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_fast_a) then ("--outputfasta " +  '"' + output_fast_a + '"') else ""}
  >>>
  parameter_meta {
    input_fast_a: "Path to input fasta."
    output_fast_a: "Path to output fasta.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_a = "${in_output_fast_a}"
  }
}