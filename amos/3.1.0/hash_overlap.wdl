version 1.0

task HashOverlap {
  input {
    Boolean? output_amosformat_messages
    Boolean? output_amos_bank
    String? use_n_inclusive
    String? use_n_exclusive
    Boolean? input_multifasta_file
    String? set_minimum_length
    String? set_verbose_level
    String? set_maximum_rate
    Boolean? strandspecific_find_matches
    File? build_overlaps_iids
    File? build_overlaps_eids
    String hash_overlap
  }
  command <<<
    hash-overlap \
      ~{hash_overlap} \
      ~{true="-A" false="" output_amosformat_messages} \
      ~{true="-B" false="" output_amos_bank} \
      ~{if defined(use_n_inclusive) then ("-b " +  '"' + use_n_inclusive + '"') else ""} \
      ~{if defined(use_n_exclusive) then ("-e " +  '"' + use_n_exclusive + '"') else ""} \
      ~{true="-F" false="" input_multifasta_file} \
      ~{if defined(set_minimum_length) then ("-o " +  '"' + set_minimum_length + '"') else ""} \
      ~{if defined(set_verbose_level) then ("-v " +  '"' + set_verbose_level + '"') else ""} \
      ~{if defined(set_maximum_rate) then ("-x " +  '"' + set_maximum_rate + '"') else ""} \
      ~{true="-s" false="" strandspecific_find_matches} \
      ~{if defined(build_overlaps_iids) then ("-I " +  '"' + build_overlaps_iids + '"') else ""} \
      ~{if defined(build_overlaps_eids) then ("-E " +  '"' + build_overlaps_eids + '"') else ""}
  >>>
  parameter_meta {
    output_amosformat_messages: "Output AMOS-format messages instead of default"
    output_amos_bank: "Output to AMOS bank instead of default"
    use_n_inclusive: "Use <n> as lowest read index (0 based inclusive)"
    use_n_exclusive: "Use <n> as highest read index (0 based exclusive)"
    input_multifasta_file: "Input is from multi-fasta file <input-name>"
    set_minimum_length: "Set minimum overlap length to <n>"
    set_verbose_level: "Set verbose level to <n>. Higher produces more output."
    set_maximum_rate: "Set maximum error rate to <d>.  E.g., 0.06 is 6% error"
    strandspecific_find_matches: "Be strand-specific: find matches only in the forward  orientation of the reads instead of in their forward and reverse orientations. Useful for transcripts and other directional sequence datasets."
    build_overlaps_iids: "Build overlaps only for reads whose IIDs are in <file>"
    build_overlaps_eids: "Build overlaps only for reads whose EIDs are in <file>"
    hash_overlap: "<input-name>"
  }
}