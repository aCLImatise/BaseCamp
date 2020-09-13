version 1.0

task PhyluceAlignGetTaxonLocusCountsInAlignments {
  input {
    Directory? input_directory_alignment
    String? input_format
    String var_2
  }
  command <<<
    phyluce_align_get_taxon_locus_counts_in_alignments \
      ~{var_2} \
      ~{if defined(input_directory_alignment) then ("--alignments " +  '"' + input_directory_alignment + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""}
  >>>
  parameter_meta {
    input_directory_alignment: "The input directory of alignment files"
    input_format: "The input alignment format\\n"
    var_2: "[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"
  }
  output {
    File out_stdout = stdout()
  }
}