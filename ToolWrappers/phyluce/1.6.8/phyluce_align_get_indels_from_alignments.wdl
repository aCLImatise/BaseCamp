version 1.0

task PhyluceAlignGetIndelsFromAlignments {
  input {
    String? out_group
    Directory? alignments
    String? input_format
    String? trim
    Int? cores
  }
  command <<<
    phyluce_align_get_indels_from_alignments \
      ~{if defined(out_group) then ("--outgroup " +  '"' + out_group + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    out_group: "OUTGROUP\\n[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]\\n[--trim {absolute,relative,none}]\\n[--cores CORES]"
    alignments: "The directory containing the alignment files"
    input_format: "The input alignment format"
    trim: "Count indels only after removing gaps/missing data\\nfrom alignment ends"
    cores: "The number of cores to use."
  }
  output {
    File out_stdout = stdout()
  }
}