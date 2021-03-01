version 1.0

task Mummer {
  input {
    Boolean? mum
    Boolean? m_umc_and
    Boolean? mum_reference
    Boolean? max_match
    Boolean? match_only_characters
    Boolean? set_minimum_length
    Boolean? compute_forward_reverse
    Boolean? only_compute_reverse
    Boolean? show_matching_substrings
    Boolean? report_queryposition_reverse
    Boolean? force_column_output
    Boolean? show_length_query
    Boolean? help
    File reference_file
    String query_files
  }
  command <<<
    mummer \
      ~{reference_file} \
      ~{query_files} \
      ~{if (mum) then "-mum" else ""} \
      ~{if (m_umc_and) then "-mumcand" else ""} \
      ~{if (mum_reference) then "-mumreference" else ""} \
      ~{if (max_match) then "-maxmatch" else ""} \
      ~{if (match_only_characters) then "-n" else ""} \
      ~{if (set_minimum_length) then "-l" else ""} \
      ~{if (compute_forward_reverse) then "-b" else ""} \
      ~{if (only_compute_reverse) then "-r" else ""} \
      ~{if (show_matching_substrings) then "-s" else ""} \
      ~{if (report_queryposition_reverse) then "-c" else ""} \
      ~{if (force_column_output) then "-F" else ""} \
      ~{if (show_length_query) then "-L" else ""} \
      ~{if (help) then "-help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mum: "compute maximal matches that are unique in both sequences"
    m_umc_and: "same as -mumreference"
    mum_reference: "compute maximal matches that are unique in the reference-\\nsequence but not necessarily in the query-sequence (default)"
    max_match: "compute all maximal matches regardless of their uniqueness"
    match_only_characters: "match only the characters a, c, g, or t\\nthey can be in upper or in lower case"
    set_minimum_length: "set the minimum length of a match\\nif not set, the default value is 20"
    compute_forward_reverse: "compute forward and reverse complement matches"
    only_compute_reverse: "only compute reverse complement matches"
    show_matching_substrings: "show the matching substrings"
    report_queryposition_reverse: "report the query-position of a reverse complement match\\nrelative to the original query sequence"
    force_column_output: "force 4 column output format regardless of the number of\\nreference sequence inputs"
    show_length_query: "show the length of the query sequences on the header line"
    help: "show possible options"
    reference_file: ""
    query_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}