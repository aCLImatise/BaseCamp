version 1.0

task SeqmagickPrimerTrim {
  input {
    Boolean? reverse_is_rev_comp
    String? source_format
    String? output_format
    Boolean? include_primers
    Int? max_hamming_distance
    String? prune_action
  }
  command <<<
    seqmagick primer-trim \
      ~{true="--reverse-is-revcomp" false="" reverse_is_rev_comp} \
      ~{if defined(source_format) then ("--source-format " +  '"' + source_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{true="--include-primers" false="" include_primers} \
      ~{if defined(max_hamming_distance) then ("--max-hamming-distance " +  '"' + max_hamming_distance + '"') else ""} \
      ~{if defined(prune_action) then ("--prune-action " +  '"' + prune_action + '"') else ""}
  >>>
  parameter_meta {
    reverse_is_rev_comp: "Reverse primer is written as the reverse complement of the top strand (default: False)"
    source_format: "Alignment format (default: detect from extension"
    output_format: "Alignment format (default: detect from extension"
    include_primers: "Include the primers in the output (default: False)"
    max_hamming_distance: "Maximum Hamming distance between primer and alignment site (default: 1). IUPAC ambiguous bases in the primer matching unambiguous bases in the alignment are not penalized"
    prune_action: "Action to take. Options are trim (trim to the region defined by the two primers, decreasing the width of the alignment), or isolate (convert all characters outside the primer-defined area to gaps). default: trim"
  }
}