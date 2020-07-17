version 1.0

task CathResolveHits {
  input {
    Boolean? output_version_information
    String? input_format
    Int? min_gap_length
    Boolean? input_hits_are_grouped
    String? overlap_trim_spec
    Int? min_seg_length
    String? long_domains_preference
    String? high_scores_preference
    Boolean? apply_cath_rules
    Boolean? naive_greedy
    String? worst_permissible_evalue
    String? worst_permissible_bit_score
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
    String? html_max_num_non_soln_hits
    Boolean? html_exclude_rejected_hits
    Boolean? cath_rules_help
    Boolean? raw_format_help
    String input_file
  }
  command <<<
    cath-resolve-hits \
      ~{input_file} \
      ~{true="-v" false="" output_version_information} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(min_gap_length) then ("--min-gap-length " +  '"' + min_gap_length + '"') else ""} \
      ~{true="--input-hits-are-grouped" false="" input_hits_are_grouped} \
      ~{if defined(overlap_trim_spec) then ("--overlap-trim-spec " +  '"' + overlap_trim_spec + '"') else ""} \
      ~{if defined(min_seg_length) then ("--min-seg-length " +  '"' + min_seg_length + '"') else ""} \
      ~{if defined(long_domains_preference) then ("--long-domains-preference " +  '"' + long_domains_preference + '"') else ""} \
      ~{if defined(high_scores_preference) then ("--high-scores-preference " +  '"' + high_scores_preference + '"') else ""} \
      ~{true="--apply-cath-rules" false="" apply_cath_rules} \
      ~{true="--naive-greedy" false="" naive_greedy} \
      ~{if defined(worst_permissible_evalue) then ("--worst-permissible-evalue " +  '"' + worst_permissible_evalue + '"') else ""} \
      ~{if defined(worst_permissible_bit_score) then ("--worst-permissible-bitscore " +  '"' + worst_permissible_bit_score + '"') else ""} \
      ~{if defined(worst_permissible_score) then ("--worst-permissible-score " +  '"' + worst_permissible_score + '"') else ""} \
      ~{if defined(filter_query_id) then ("--filter-query-id " +  '"' + filter_query_id + '"') else ""} \
      ~{true="--limit-queries" false="" limit_queries} \
      ~{if defined(hits_text_to_file) then ("--hits-text-to-file " +  '"' + hits_text_to_file + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--output-trimmed-hits" false="" output_trimmed_hits} \
      ~{if defined(summarise_to_file) then ("--summarise-to-file " +  '"' + summarise_to_file + '"') else ""} \
      ~{if defined(html_output_to_file) then ("--html-output-to-file " +  '"' + html_output_to_file + '"') else ""} \
      ~{if defined(json_output_to_file) then ("--json-output-to-file " +  '"' + json_output_to_file + '"') else ""} \
      ~{if defined(export_css_file) then ("--export-css-file " +  '"' + export_css_file + '"') else ""} \
      ~{true="--restrict-html-within-body" false="" restrict_html_within_body} \
      ~{if defined(html_max_num_non_soln_hits) then ("--html-max-num-non-soln-hits " +  '"' + html_max_num_non_soln_hits + '"') else ""} \
      ~{true="--html-exclude-rejected-hits" false="" html_exclude_rejected_hits} \
      ~{true="--cath-rules-help" false="" cath_rules_help} \
      ~{true="--raw-format-help" false="" raw_format_help}
  >>>
  parameter_meta {
    output_version_information: "[ --version ]                               Output version information"
    input_format: "(=raw_with_scores)     Parse the input data from <format>, one of available formats: hmmer_domtblout  - HMMER domtblout format (must assume all hits are continuous) hmmscan_out      - HMMER hmmscan output format (can be used to deduce discontinuous hits) hmmsearch_out    - HMMER hmmsearch output format (can be used to deduce discontinuous hits) raw_with_scores  - \"raw\" format with scores raw_with_evalues - \"raw\" format with evalues"
    min_gap_length: "(=30)                When parsing starts/stops from alignment data, ignore gaps of less than <length> residues"
    input_hits_are_grouped: "Rely on the input hits being grouped by query protein (so the run is faster and uses less memory)"
    overlap_trim_spec: "(=30/10)            Allow different hits' segments to overlap a bit by trimming all segments using spec <trim> of the form n/m (n is a segment length; m is the *total* length to be trimmed off both ends) For longer segments, total trim stays at m; for shorter, it decreases linearly (to 0 for length 1). To choose: set m to the biggest total trim you'd want for a really long segment; then, set n to length of the shortest segment you'd want to have that total trim"
    min_seg_length: "(=7)                 Ignore all segments that are fewer than <length> residues long"
    long_domains_preference: "(=0)           Prefer longer hits to degree <val> (<val> may be negative to prefer shorter; 0 leaves scores unaffected)"
    high_scores_preference: "(=0)            Prefer higher scores to degree <val> (<val> may be negative to reduce preference for higher scores; 0 leaves scores unaffected)"
    apply_cath_rules: "[DEPRECATED] Apply rules specific to CATH-Gene3D during the parsing and processing"
    naive_greedy: "Use a naive, greedy approach to resolving (not recommended except for comparison)"
    worst_permissible_evalue: "(=0.001)   Ignore any hits with an evalue worse than <evalue>"
    worst_permissible_bit_score: "(=10)  Ignore any hits with a bitscore worse than <bitscore>"
    worst_permissible_score: "Ignore any hits with a score worse than <score>"
    filter_query_id: "Ignore all input data except that for query protein(s) <id> (may be specified multiple times for multiple query proteins)"
    limit_queries: "[=<num>(=1)]                   Only process the first <num> query protein(s) encountered in the input data"
    hits_text_to_file: "Write the resolved hits in plain text to file <file>"
    quiet: "Suppress the default output of resolved hits in plain text to stdout"
    output_trimmed_hits: "When writing out the final hits, output the hits' starts/stop as they are *after trimming*"
    summarise_to_file: "Write a brief text summary of the input data to file <file> (or '-' for stdout)"
    html_output_to_file: "Write the results as HTML to file <file> (or '-' for stdout)"
    json_output_to_file: "Write the results as JSON to file <file> (or '-' for stdout)"
    export_css_file: "Export the CSS used in the HTML output to <file> (or '-' for stdout)"
    restrict_html_within_body: "Restrict HTML output to the contents of the body tag. The contents should be included inside a body tag of class crh-body"
    html_max_num_non_soln_hits: "(=80)       Only display up to <num> non-solution hits in the HTML"
    html_exclude_rejected_hits: "Exclude hits rejected by the score filters from the HTML"
    cath_rules_help: "Show help on the rules activated by the (DEPRECATED) --apply-cath-rules option"
    raw_format_help: "Show help about the raw input formats (raw_with_scores and raw_with_evalues)"
    input_file: ""
  }
}