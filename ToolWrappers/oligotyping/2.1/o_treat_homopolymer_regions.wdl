version 1.0

task Otreathomopolymerregions {
  input {
    File? input_alignment
    File? output_fast_a
    File? log
  }
  command <<<
    o_treat_homopolymer_regions \
      ~{if defined(input_alignment) then ("--input-alignment " +  '"' + input_alignment + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    input_alignment: "align2first output (.paf file)"
    output_fast_a: "Output FASTA file to store homopolymer-treated\\nsequences"
    log: "Log file. Default, STDOUT."
  }
  output {
    File out_stdout = stdout()
    File out_input_alignment = "${in_input_alignment}"
    File out_output_fast_a = "${in_output_fast_a}"
  }
}