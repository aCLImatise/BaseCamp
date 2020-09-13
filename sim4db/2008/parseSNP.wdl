version 1.0

task ParseSNP {
  input {
    Int? filter_matches_percent_identity
    Int? filter_matches_percent_coverage
    File? save_matches_contain
    File? save_parsed_snps
    String? report_debugging_stuff
    String? use_single_character
    Int? use_tag_size_tried
    Int? use_tag_position_tried
    Int? additive_offset_snp
    String? format
  }
  command <<<
    parseSNP \
      ~{if defined(filter_matches_percent_identity) then ("-i " +  '"' + filter_matches_percent_identity + '"') else ""} \
      ~{if defined(filter_matches_percent_coverage) then ("-c " +  '"' + filter_matches_percent_coverage + '"') else ""} \
      ~{if defined(save_matches_contain) then ("-F " +  '"' + save_matches_contain + '"') else ""} \
      ~{if defined(save_parsed_snps) then ("-O " +  '"' + save_parsed_snps + '"') else ""} \
      ~{if defined(report_debugging_stuff) then ("-D " +  '"' + report_debugging_stuff + '"') else ""} \
      ~{if defined(use_single_character) then ("-d " +  '"' + use_single_character + '"') else ""} \
      ~{if defined(use_tag_size_tried) then ("-s " +  '"' + use_tag_size_tried + '"') else ""} \
      ~{if defined(use_tag_position_tried) then ("-p " +  '"' + use_tag_position_tried + '"') else ""} \
      ~{if defined(additive_offset_snp) then ("-o " +  '"' + additive_offset_snp + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    filter_matches_percent_identity: "filter matches on percent identity"
    filter_matches_percent_coverage: "filter matches on percent coverage"
    save_matches_contain: "save matches that do not contain the\\nto the file 'failed'"
    save_parsed_snps: "save the parsed SNPs to the file\\n'output'"
    report_debugging_stuff: "report debugging stuff into files\\nprefixed with 'prefix'"
    use_single_character: "Use the single character delimiter as\\nthe end of the defline ID field.  The\\ndefault is to split on any whitespace."
    use_tag_size_tried: "Use this tag as the size of the snp.\\n'/size=' is tried by default."
    use_tag_position_tried: "Use this tag as the position of the snp.\\n'allelePos=' and '/pos=' are tried by\\ndefault, and if posTag is not found.\\nTAGS: The number immediately after the first\\noccurance of the tag will be used."
    additive_offset_snp: "An additive offset to the SNP position.\\nThe default is 0."
    format: "1 - use the original (default) format\\n2 - use an extended format, includes the\\nposition in the alignment string"
  }
  output {
    File out_stdout = stdout()
    File out_save_parsed_snps = "${in_save_parsed_snps}"
  }
}