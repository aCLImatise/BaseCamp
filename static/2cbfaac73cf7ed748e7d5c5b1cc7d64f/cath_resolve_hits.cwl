class: CommandLineTool
id: cath_resolve_hits.cwl
inputs:
- id: in_output_version_information
  doc: '[ --version ]                               Output version information'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_format
  doc: '(=raw_with_scores)     Parse the input data from <format>, one of available
    formats:'
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_min_gap_length
  doc: (=30)                When parsing starts/stops from alignment data, ignore
    gaps of less than <length> residues
  type: long?
  inputBinding:
    prefix: --min-gap-length
- id: in_input_hits_are_grouped
  doc: "Rely on the input hits being grouped by query protein\n(so the run is faster\
    \ and uses less memory)"
  type: boolean?
  inputBinding:
    prefix: --input-hits-are-grouped
- id: in_overlap_trim_spec
  doc: "(=30/10)            Allow different hits' segments to overlap a bit by trimming\
    \ all segments using spec <trim>\nof the form n/m (n is a segment length; m is\
    \ the *total* length to be trimmed off both ends)\nFor longer segments, total\
    \ trim stays at m; for shorter, it decreases linearly (to 0 for length 1).\nTo\
    \ choose: set m to the biggest total trim you'd want for a really long segment;\n\
    then, set n to length of the shortest segment you'd want to have that total trim"
  type: long?
  inputBinding:
    prefix: --overlap-trim-spec
- id: in_min_seg_length
  doc: (=7)                 Ignore all segments that are fewer than <length> residues
    long
  type: long?
  inputBinding:
    prefix: --min-seg-length
- id: in_long_domains_preference
  doc: "(=0)           Prefer longer hits to degree <val>\n(<val> may be negative\
    \ to prefer shorter; 0 leaves scores unaffected)"
  type: long?
  inputBinding:
    prefix: --long-domains-preference
- id: in_high_scores_preference
  doc: "(=0)            Prefer higher scores to degree <val>\n(<val> may be negative\
    \ to reduce preference for higher scores; 0 leaves scores unaffected)"
  type: long?
  inputBinding:
    prefix: --high-scores-preference
- id: in_apply_cath_rules
  doc: '[DEPRECATED] Apply rules specific to CATH-Gene3D during the parsing and processing'
  type: boolean?
  inputBinding:
    prefix: --apply-cath-rules
- id: in_naive_greedy
  doc: Use a naive, greedy approach to resolving (not recommended except for comparison)
  type: boolean?
  inputBinding:
    prefix: --naive-greedy
- id: in_worst_permissible_evalue
  doc: (=0.001)   Ignore any hits with an evalue worse than <evalue>
  type: double?
  inputBinding:
    prefix: --worst-permissible-evalue
- id: in_worst_permissible_bit_score
  doc: (=10)  Ignore any hits with a bitscore worse than <bitscore>
  type: long?
  inputBinding:
    prefix: --worst-permissible-bitscore
- id: in_worst_permissible_score
  doc: Ignore any hits with a score worse than <score>
  type: string?
  inputBinding:
    prefix: --worst-permissible-score
- id: in_filter_query_id
  doc: "Ignore all input data except that for query protein(s) <id>\n(may be specified\
    \ multiple times for multiple query proteins)"
  type: string?
  inputBinding:
    prefix: --filter-query-id
- id: in_limit_queries
  doc: '[=<num>(=1)]                   Only process the first <num> query protein(s)
    encountered in the input data'
  type: boolean?
  inputBinding:
    prefix: --limit-queries
- id: in_hits_text_to_file
  doc: Write the resolved hits in plain text to file <file>
  type: File?
  inputBinding:
    prefix: --hits-text-to-file
- id: in_quiet
  doc: Suppress the default output of resolved hits in plain text to stdout
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_output_trimmed_hits
  doc: When writing out the final hits, output the hits' starts/stop as they are *after
    trimming*
  type: boolean?
  inputBinding:
    prefix: --output-trimmed-hits
- id: in_summarise_to_file
  doc: Write a brief text summary of the input data to file <file> (or '-' for stdout)
  type: File?
  inputBinding:
    prefix: --summarise-to-file
- id: in_html_output_to_file
  doc: Write the results as HTML to file <file> (or '-' for stdout)
  type: File?
  inputBinding:
    prefix: --html-output-to-file
- id: in_json_output_to_file
  doc: Write the results as JSON to file <file> (or '-' for stdout)
  type: File?
  inputBinding:
    prefix: --json-output-to-file
- id: in_export_css_file
  doc: Export the CSS used in the HTML output to <file> (or '-' for stdout)
  type: File?
  inputBinding:
    prefix: --export-css-file
- id: in_restrict_html_within_body
  doc: "Restrict HTML output to the contents of the body tag.\nThe contents should\
    \ be included inside a body tag of class crh-body"
  type: boolean?
  inputBinding:
    prefix: --restrict-html-within-body
- id: in_html_max_num_non_soln_hits
  doc: (=80)       Only display up to <num> non-solution hits in the HTML
  type: long?
  inputBinding:
    prefix: --html-max-num-non-soln-hits
- id: in_html_exclude_rejected_hits
  doc: Exclude hits rejected by the score filters from the HTML
  type: boolean?
  inputBinding:
    prefix: --html-exclude-rejected-hits
- id: in_cath_rules_help
  doc: Show help on the rules activated by the (DEPRECATED) --apply-cath-rules option
  type: boolean?
  inputBinding:
    prefix: --cath-rules-help
- id: in_raw_format_help
  doc: Show help about the raw input formats (raw_with_scores and raw_with_evalues)
  type: boolean?
  inputBinding:
    prefix: --raw-format-help
- id: in_hmmer_dom_tbl_out
  doc: '- HMMER domtblout format (must assume all hits are continuous)'
  type: string
  inputBinding:
    position: 0
- id: in_hmms_can_out
  doc: '- HMMER hmmscan output format (can be used to deduce discontinuous hits)'
  type: string
  inputBinding:
    position: 1
- id: in_hmm_search_out
  doc: '- HMMER hmmsearch output format (can be used to deduce discontinuous hits)'
  type: string
  inputBinding:
    position: 2
- id: in_raw_with_scores
  doc: '- "raw" format with scores'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_html_output_to_file
  doc: Write the results as HTML to file <file> (or '-' for stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_html_output_to_file)
- id: out_json_output_to_file
  doc: Write the results as JSON to file <file> (or '-' for stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_json_output_to_file)
- id: out_export_css_file
  doc: Export the CSS used in the HTML output to <file> (or '-' for stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_export_css_file)
hints: []
cwlVersion: v1.1
baseCommand:
- cath-resolve-hits
