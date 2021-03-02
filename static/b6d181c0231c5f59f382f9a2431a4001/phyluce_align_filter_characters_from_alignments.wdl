version 1.0

task PhyluceAlignFilterCharactersFromAlignments {
  input {
    String? alignments
    File? output_fasta_file
    String? input_format
    String var_3
  }
  command <<<
    phyluce_align_filter_characters_from_alignments \
      ~{var_3} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The input alignment files to filter"
    output_fasta_file: "The output FASTA file to create"
    input_format: "The input alignment format\\n"
    var_3: "[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"
  }
  output {
    File out_stdout = stdout()
    File out_output_fasta_file = "${in_output_fasta_file}"
  }
}