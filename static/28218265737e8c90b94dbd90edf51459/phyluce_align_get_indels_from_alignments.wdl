version 1.0

task PhyluceAlignGetIndelsFromAlignments {
  input {
    String? var_0
    Directory? alignments
    String? input_format
    String? trim
    Int? cores
    String var_5
  }
  command <<<
    phyluce_align_get_indels_from_alignments \
      ~{var_5} \
      ~{if defined(var_0) then ("--outgroup " +  '"' + var_0 + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    alignments: "The directory containing the alignment files"
    input_format: "The input alignment format"
    trim: "Count indels only after removing gaps/missing data\\nfrom alignment ends"
    cores: "The number of cores to use."
    var_5: "[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"
  }
  output {
    File out_stdout = stdout()
  }
}