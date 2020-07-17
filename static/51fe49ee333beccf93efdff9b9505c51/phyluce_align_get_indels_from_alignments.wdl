version 1.0

task PhyluceAlignGetIndelsFromAlignments {
  input {
    String? alignments
    String? output_filename_extension
    String? out_group
    String? input_format
    String? trim
    String? cores
  }
  command <<<
    phyluce_align_get_indels_from_alignments \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_filename_extension) then ("--output " +  '"' + output_filename_extension + '"') else ""} \
      ~{if defined(out_group) then ("--outgroup " +  '"' + out_group + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing the alignment files"
    output_filename_extension: "The output filename (without extension - code will add .sqlite)"
    out_group: "The outgroup taxon"
    input_format: "The input alignment format"
    trim: "Count indels only after removing gaps/missing data from alignment ends"
    cores: "The number of cores to use."
  }
}