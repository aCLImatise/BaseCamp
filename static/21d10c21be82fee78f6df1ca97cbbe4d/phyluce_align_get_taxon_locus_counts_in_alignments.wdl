version 1.0

task PhyluceAlignGetTaxonLocusCountsInAlignments {
  input {
    String alignmentsAlignments
    String inputInputFormat
  }
  command <<<
    phyluce_align_get_taxon_locus_counts_in_alignments \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""}
  >>>
}