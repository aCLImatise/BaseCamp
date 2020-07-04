version 1.0

task PhyluceAlignFilterCharactersFromAlignments {
  input {
    String? alignments
    String? output_fasta_file
    String? input_format
  }
  command <<<
    phyluce_align_filter_characters_from_alignments \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The input alignment files to filter"
    output_fasta_file: "The output FASTA file to create"
    input_format: "The input alignment format"
  }
}