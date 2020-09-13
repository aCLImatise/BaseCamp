version 1.0

task Cathresolvehits {
  input {
    Boolean? output_version_information
    String? input_format
    Int? min_gap_length
    Boolean? input_hits_are_grouped
    Int? overlap_trim_spec
    Int? min_seg_length
    Int? long_domains_preference
    Int? high_scores_preference
    Boolean? apply_cath_rules
    Boolean? naive_greedy
    Float? worst_permissible_evalue
    Int? worst_permissible_bit_score
    String? worst_permissible_score
    String? filter_query_id
    Boolean? limit_queries
    File? hits_text_to_file
    Boolean? quiet
    Boolean? output_trimmed_hits
    File? summarise_to_file
    File? html_output_to_file
    File? json_output_to_file
    File? export_css_file
    Boolean? restrict_html_within_body
    Int? html_max_num_non_soln_hits
    Boolean? html_exclude_rejected_hits
    Boolean? cath_rules_help
    Boolean? raw_format_help
    String hmmer_dom_tbl_out
    String hmms_can_out
    String hmm_search_out
    String raw_with_scores
  }
  command <<<
    cath_resolve_hits \
      ~{hmmer_dom_tbl_out} \
      ~{hmms_can_out} \
      ~{hmm_search_out} \
      ~{raw_with_scores} \
      ~{if (output_version_information) then "-v" else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(min_gap_length) then ("--min-gap-length " +  '"' + min_gap_length + '"') else ""} \
      ~{if (input_hits_are_grouped) then "--input-hits-are-grouped" else ""} \
      ~{if defined(overlap_trim_spec) then ("--overlap-trim-spec " +  '"' + overlap_trim_spec + '"') else ""} \
      ~{if defined(min_seg_length) then ("--min-seg-length " +  '"' + min_seg_length + '"') else ""} \
      ~{if defined(long_domains_preference) then ("--long-domains-preference " +  '"' + long_domains_preference + '"') else ""} \
      ~{if defined(high_scores_preference) then ("--high-scores-preference " +  '"' + high_scores_preference + '"') else ""} \
      ~{if (apply_cath_rules) then "--apply-cath-rules" else ""} \
      ~{if (naive_greedy) then "--naive-greedy" else ""} \
      ~{if defined(worst_permissible_evalue) then ("--worst-permissible-evalue " +  '"' + worst_permissible_evalue + '"') else ""} \
      ~{if defined(worst_permissible_bit_score) then ("--worst-permissible-bitscore " +  '"' + worst_permissible_bit_score + '"') else ""} \
      ~{if defined(worst_permissible_score) then ("--worst-permissible-score " +  '"' + worst_permissible_score + '"') else ""} \
      ~{if defined(filter_query_id) then ("--filter-query-id " +  '"' + filter_query_id + '"') else ""} \
      ~{if (limit_queries) then "--limit-queries" else ""} \
      ~{if defined(hits_text_to_file) then ("--hits-text-to-file " +  '"' + hits_text_to_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (output_trimmed_hits) then "--output-trimmed-hits" else ""} \
      ~{if defined(summarise_to_file) then ("--summarise-to-file " +  '"' + summarise_to_file + '"') else ""} \
      ~{if defined(html_output_to_file) then ("--html-output-to-file " +  '"' + html_output_to_file + '"') else ""} \
      ~{if defined(json_output_to_file) then ("--json-output-to-file " +  '"' + json_output_to_file + '"') else ""} \
      ~{if defined(export_css_file) then ("--export-css-file " +  '"' + export_css_file + '"') else ""} \
      ~{if (restrict_html_within_body) then "--restrict-html-within-body" else ""} \
      ~{if defined(html_max_num_non_soln_hits) then ("--html-max-num-non-soln-hits " +  '"' + html_max_num_non_soln_hits + '"') else ""} \
      ~{if (html_exclude_rejected_hits) then "--html-exclude-rejected-hits" else ""} \
      ~{if (cath_rules_help) then "--cath-rules-help" else ""} \
      ~{if (raw_format_help) then "--raw-format-help" else ""}
  >>>
  parameter_meta {
    output_version_information: "[ --version ]                               Output version information"
    input_format: "(=raw_with_scores)     Parse the input data from <format>, one of available formats:"
    min_gap_length: "(=30)                When parsing starts/stops from alignment data, ignore gaps of less than <length> residues"
    input_hits_are_grouped: "Rely on the input hits being grouped by query protein\\n(so the run is faster and uses less memory)"
    overlap_trim_spec: "(=30/10)            Allow different hits' segments to overlap a bit by trimming all segments using spec <trim>\\nof the form n/m (n is a segment length; m is the *total* length to be trimmed off both ends)\\nFor longer segments, total trim stays at m; for shorter, it decreases linearly (to 0 for length 1).\\nTo choose: set m to the biggest total trim you'd want for a really long segment;\\nthen, set n to length of the shortest segment you'd want to have that total trim"
    min_seg_length: "(=7)                 Ignore all segments that are fewer than <length> residues long"
    long_domains_preference: "(=0)           Prefer longer hits to degree <val>\\n(<val> may be negative to prefer shorter; 0 leaves scores unaffected)"
    high_scores_preference: "(=0)            Prefer higher scores to degree <val>\\n(<val> may be negative to reduce preference for higher scores; 0 leaves scores unaffected)"
    apply_cath_rules: "[DEPRECATED] Apply rules specific to CATH-Gene3D during the parsing and processing"
    naive_greedy: "Use a naive, greedy approach to resolving (not recommended except for comparison)"
    worst_permissible_evalue: "(=0.001)   Ignore any hits with an evalue worse than <evalue>"
    worst_permissible_bit_score: "(=10)  Ignore any hits with a bitscore worse than <bitscore>"
    worst_permissible_score: "Ignore any hits with a score worse than <score>"
    filter_query_id: "Ignore all input data except that for query protein(s) <id>\\n(may be specified multiple times for multiple query proteins)"
    limit_queries: "[=<num>(=1)]                   Only process the first <num> query protein(s) encountered in the input data"
    hits_text_to_file: "Write the resolved hits in plain text to file <file>"
    quiet: "Suppress the default output of resolved hits in plain text to stdout"
    output_trimmed_hits: "When writing out the final hits, output the hits' starts/stop as they are *after trimming*"
    summarise_to_file: "Write a brief text summary of the input data to file <file> (or '-' for stdout)"
    html_output_to_file: "Write the results as HTML to file <file> (or '-' for stdout)"
    json_output_to_file: "Write the results as JSON to file <file> (or '-' for stdout)"
    export_css_file: "Export the CSS used in the HTML output to <file> (or '-' for stdout)"
    restrict_html_within_body: "Restrict HTML output to the contents of the body tag.\\nThe contents should be included inside a body tag of class crh-body"
    html_max_num_non_soln_hits: "(=80)       Only display up to <num> non-solution hits in the HTML"
    html_exclude_rejected_hits: "Exclude hits rejected by the score filters from the HTML"
    cath_rules_help: "Show help on the rules activated by the (DEPRECATED) --apply-cath-rules option"
    raw_format_help: "Show help about the raw input formats (raw_with_scores and raw_with_evalues)"
    hmmer_dom_tbl_out: "- HMMER domtblout format (must assume all hits are continuous)"
    hmms_can_out: "- HMMER hmmscan output format (can be used to deduce discontinuous hits)"
    hmm_search_out: "- HMMER hmmsearch output format (can be used to deduce discontinuous hits)"
    raw_with_scores: "- \\\"raw\\\" format with scores"
  }
  output {
    File out_stdout = stdout()
    File out_html_output_to_file = "${in_html_output_to_file}"
    File out_json_output_to_file = "${in_json_output_to_file}"
    File out_export_css_file = "${in_export_css_file}"
  }
}