version 1.0

task Hashoverlap {
  input {
    Boolean? output_amosformat_messages
    Boolean? output_amos_default
    Int? use_based_inclusive
    Int? use_as_highest
    Boolean? input_multifasta_file
    Int? set_minimum_overlap
    String? set_verbose_level
    Float? set_maximum_error
    Boolean? be_strandspecific_find
    File? build_overlaps_iids
    File? build_overlaps_eids
    String hash_overlap
  }
  command <<<
    hash_overlap \
      ~{hash_overlap} \
      ~{if (output_amosformat_messages) then "-A" else ""} \
      ~{if (output_amos_default) then "-B" else ""} \
      ~{if defined(use_based_inclusive) then ("-b " +  '"' + use_based_inclusive + '"') else ""} \
      ~{if defined(use_as_highest) then ("-e " +  '"' + use_as_highest + '"') else ""} \
      ~{if (input_multifasta_file) then "-F" else ""} \
      ~{if defined(set_minimum_overlap) then ("-o " +  '"' + set_minimum_overlap + '"') else ""} \
      ~{if defined(set_verbose_level) then ("-v " +  '"' + set_verbose_level + '"') else ""} \
      ~{if defined(set_maximum_error) then ("-x " +  '"' + set_maximum_error + '"') else ""} \
      ~{if (be_strandspecific_find) then "-s" else ""} \
      ~{if defined(build_overlaps_iids) then ("-I " +  '"' + build_overlaps_iids + '"') else ""} \
      ~{if defined(build_overlaps_eids) then ("-E " +  '"' + build_overlaps_eids + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_amosformat_messages: "Output AMOS-format messages instead of default"
    output_amos_default: "Output to AMOS bank instead of default"
    use_based_inclusive: "Use <n> as lowest read index (0 based inclusive)"
    use_as_highest: "Use <n> as highest read index (0 based exclusive)"
    input_multifasta_file: "Input is from multi-fasta file <input-name>"
    set_minimum_overlap: "Set minimum overlap length to <n>"
    set_verbose_level: "Set verbose level to <n>. Higher produces more output."
    set_maximum_error: "Set maximum error rate to <d>.  E.g., 0.06 is 6% error"
    be_strandspecific_find: "Be strand-specific: find matches only in the forward\\norientation of the reads instead of in their forward and\\nreverse orientations. Useful for transcripts and other\\ndirectional sequence datasets."
    build_overlaps_iids: "Build overlaps only for reads whose IIDs are in <file>"
    build_overlaps_eids: "Build overlaps only for reads whose EIDs are in <file>"
    hash_overlap: "<input-name>"
  }
  output {
    File out_stdout = stdout()
  }
}