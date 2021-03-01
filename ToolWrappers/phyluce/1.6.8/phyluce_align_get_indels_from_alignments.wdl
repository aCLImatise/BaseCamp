version 1.0

task PhyluceAlignGetIndelsFromAlignments {
  input {
    Directory? alignments
    File? output_filename_extension
    String? the_outgroup_taxon
    String? input_format
    String? trim
    Int? cores
    String var_6
  }
  command <<<
    phyluce_align_get_indels_from_alignments \
      ~{var_6} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_filename_extension) then ("--output " +  '"' + output_filename_extension + '"') else ""} \
      ~{if defined(the_outgroup_taxon) then ("--outgroup " +  '"' + the_outgroup_taxon + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The directory containing the alignment files"
    output_filename_extension: "The output filename (without extension - code will add\\n.sqlite)"
    the_outgroup_taxon: "The outgroup taxon"
    input_format: "The input alignment format"
    trim: "Count indels only after removing gaps/missing data\\nfrom alignment ends"
    cores: "The number of cores to use."
    var_6: "[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_extension = "${in_output_filename_extension}"
  }
}