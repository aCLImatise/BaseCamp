version 1.0

task Hashoverlap {
  input {
    Boolean? output_amosformat_messages
    Boolean? output_amos_bank
    Int? use_lowest_read
    Int? use_based_exclusive
    Boolean? input_multifasta_file
    Int? set_minimum_overlap
    String? set_verbose_level
    Float? set_maximum_rate
    Boolean? strandspecific_find_matches
    File? build_overlaps_iids
    File? build_overlaps_eids
    String hash_overlap
  }
  command <<<
    hash_overlap \
      ~{hash_overlap} \
      ~{if (output_amosformat_messages) then "-A" else ""} \
      ~{if (output_amos_bank) then "-B" else ""} \
      ~{if defined(use_lowest_read) then ("-b " +  '"' + use_lowest_read + '"') else ""} \
      ~{if defined(use_based_exclusive) then ("-e " +  '"' + use_based_exclusive + '"') else ""} \
      ~{if (input_multifasta_file) then "-F" else ""} \
      ~{if defined(set_minimum_overlap) then ("-o " +  '"' + set_minimum_overlap + '"') else ""} \
      ~{if defined(set_verbose_level) then ("-v " +  '"' + set_verbose_level + '"') else ""} \
      ~{if defined(set_maximum_rate) then ("-x " +  '"' + set_maximum_rate + '"') else ""} \
      ~{if (strandspecific_find_matches) then "-s" else ""} \
      ~{if defined(build_overlaps_iids) then ("-I " +  '"' + build_overlaps_iids + '"') else ""} \
      ~{if defined(build_overlaps_eids) then ("-E " +  '"' + build_overlaps_eids + '"') else ""}
  >>>
  parameter_meta {
    output_amosformat_messages: "Output AMOS-format messages instead of default"
    output_amos_bank: "Output to AMOS bank instead of default"
    use_lowest_read: "Use <n> as lowest read index (0 based inclusive)"
    use_based_exclusive: "Use <n> as highest read index (0 based exclusive)"
    input_multifasta_file: "Input is from multi-fasta file <input-name>"
    set_minimum_overlap: "Set minimum overlap length to <n>"
    set_verbose_level: "Set verbose level to <n>. Higher produces more output."
    set_maximum_rate: "Set maximum error rate to <d>.  E.g., 0.06 is 6% error"
    strandspecific_find_matches: "Be strand-specific: find matches only in the forward\\norientation of the reads instead of in their forward and\\nreverse orientations. Useful for transcripts and other\\ndirectional sequence datasets."
    build_overlaps_iids: "Build overlaps only for reads whose IIDs are in <file>"
    build_overlaps_eids: "Build overlaps only for reads whose EIDs are in <file>"
    hash_overlap: "<input-name>"
  }
  output {
    File out_stdout = stdout()
  }
}