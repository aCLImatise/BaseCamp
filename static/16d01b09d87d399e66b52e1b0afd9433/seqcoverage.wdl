version 1.0

task Seqcoverage {
  input {
    File? direct_output_json
    Float? handle_ambigous_characters
    String? type_expected_defaultdefaultformatdna
    Int? sequence_name_form
    Boolean? report_progress_updates
  }
  command <<<
    seqcoverage \
      ~{if defined(direct_output_json) then ("-o " +  '"' + direct_output_json + '"') else ""} \
      ~{if defined(handle_ambigous_characters) then ("-a " +  '"' + handle_ambigous_characters + '"') else ""} \
      ~{if defined(type_expected_defaultdefaultformatdna) then ("-t " +  '"' + type_expected_defaultdefaultformatdna + '"') else ""} \
      ~{if defined(sequence_name_form) then ("-d " +  '"' + sequence_name_form + '"') else ""} \
      ~{if (report_progress_updates) then "-q" else ""}
  >>>
  parameter_meta {
    direct_output_json: "direct the output JSON to a file named OUTPUT (default=stdout)"
    handle_ambigous_characters: "handle ambigous characters using one of the following strategies (default=skipover)\\naverage: average ambiguities (e.g. a nucleotide R adds 0.5 to A and G coverage for that position);\\nignore: ambiguities contribute nothing to coverage counts;"
    type_expected_defaultdefaultformatdna: "the type of data expected (default=DEFAULT_FORMAT)\\ndna: DNA or RNA (IUPAC);\\nprotein : protein (IUPAC);"
    sequence_name_form: "if sequence name is of the form 'somethingCOUNTS_IN_NAMEinteger' then treat the integer as a copy number\\nwhen computing coverages (a character, default=COUNTS_IN_NAME):"
    report_progress_updates: "do not report progress updates and other diagnostics to stderr"
  }
  output {
    File out_stdout = stdout()
    File out_direct_output_json = "${in_direct_output_json}"
  }
}