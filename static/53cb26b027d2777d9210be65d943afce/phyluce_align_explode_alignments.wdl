version 1.0

task PhyluceAlignExplodeAlignments {
  input {
    Directory? alignments
    Directory? output_folder_fasta
    String? input_format
    File? conf
    File? section
    Array[String] exclude
    Boolean? by_tax_on
    Boolean? include_locus
    String var_8
  }
  command <<<
    phyluce_align_explode_alignments \
      ~{var_8} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_folder_fasta) then ("--output " +  '"' + output_folder_fasta + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (by_tax_on) then "--by-taxon" else ""} \
      ~{if (include_locus) then "--include-locus" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "Input folder of alignments"
    output_folder_fasta: "Output folder of fasta files"
    input_format: "The input alignment format"
    conf: "Config file for renaming"
    section: "Section of config file to use"
    exclude: "Taxa/taxon to exclude"
    by_tax_on: "Explode file by taxon instead of by-locus"
    include_locus: "Include the locus name in the FASTA header"
    var_8: "[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_fasta = "${in_output_folder_fasta}"
  }
}