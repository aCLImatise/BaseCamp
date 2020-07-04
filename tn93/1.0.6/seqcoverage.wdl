version 1.0

task Seqcoverage {
  input {
    String? direct_output_json
    String? handle_ambigous_characters
    String? type_data_expected
    String? sequence_name_form
    Boolean? report_progress_updates
  }
  command <<<
    seqcoverage \
      ~{if defined(direct_output_json) then ("-o " +  '"' + direct_output_json + '"') else ""} \
      ~{if defined(handle_ambigous_characters) then ("-a " +  '"' + handle_ambigous_characters + '"') else ""} \
      ~{if defined(type_data_expected) then ("-t " +  '"' + type_data_expected + '"') else ""} \
      ~{if defined(sequence_name_form) then ("-d " +  '"' + sequence_name_form + '"') else ""} \
      ~{true="-q" false="" report_progress_updates}
  >>>
  parameter_meta {
    direct_output_json: "direct the output JSON to a file named OUTPUT (default=stdout)"
    handle_ambigous_characters: "handle ambigous characters using one of the following strategies (default=skipover) average: average ambiguities (e.g. a nucleotide R adds 0.5 to A and G coverage for that position); ignore: ambiguities contribute nothing to coverage counts;"
    type_data_expected: "the type of data expected (default=DEFAULT_FORMAT) dna: DNA or RNA (IUPAC); protein : protein (IUPAC);"
    sequence_name_form: "if sequence name is of the form 'somethingCOUNTS_IN_NAMEinteger' then treat the integer as a copy number when computing coverages (a character, default=COUNTS_IN_NAME):"
    report_progress_updates: "do not report progress updates and other diagnostics to stderr "
  }
}