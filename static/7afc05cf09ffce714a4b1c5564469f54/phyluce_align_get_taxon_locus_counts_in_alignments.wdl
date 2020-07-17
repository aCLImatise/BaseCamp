version 1.0

task PhyluceAlignGetTaxonLocusCountsInAlignments {
  input {
    String? alignments
    String? input_format
  }
  command <<<
    phyluce_align_get_taxon_locus_counts_in_alignments \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The input directory of alignment files"
    input_format: "The input alignment format"
  }
}