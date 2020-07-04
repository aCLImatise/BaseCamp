version 1.0

task PhyluceAlignExplodeAlignments {
  input {
    String? alignments
    String? output_folder_fasta
    String? input_format
    String? conf
    String? section
    Array[String] exclude
    Boolean? by_tax_on
    Boolean? include_locus
  }
  command <<<
    phyluce_align_explode_alignments \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_folder_fasta) then ("--output " +  '"' + output_folder_fasta + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--by-taxon" false="" by_tax_on} \
      ~{true="--include-locus" false="" include_locus}
  >>>
  parameter_meta {
    alignments: "Input folder of alignments"
    output_folder_fasta: "Output folder of fasta files"
    input_format: "The input alignment format"
    conf: "Config file for renaming"
    section: "Section of config file to use"
    exclude: "Taxa/taxon to exclude"
    by_tax_on: "Explode file by taxon instead of by-locus"
    include_locus: "Include the locus name in the FASTA header"
  }
}