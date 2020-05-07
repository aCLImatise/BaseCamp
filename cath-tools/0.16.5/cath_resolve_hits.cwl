class: CommandLineTool
id: cath_resolve_hits.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: '[ --version ]                               Output version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: input_format
  doc: '(=raw_with_scores)     Parse the input data from <format>, one of available
    formats: hmmer_domtblout  - HMMER domtblout format (must assume all hits are continuous)
    hmmscan_out      - HMMER hmmscan output format (can be used to deduce discontinuous
    hits) hmmsearch_out    - HMMER hmmsearch output format (can be used to deduce
    discontinuous hits) raw_with_scores  - "raw" format with scores raw_with_evalues
    - "raw" format with evalues'
  type: string
  inputBinding:
    prefix: --input-format
- id: min_gap_length
  doc: (=30)                When parsing starts/stops from alignment data, ignore
    gaps of less than <length> residues
  type: long
  inputBinding:
    prefix: --min-gap-length
- id: input_hits_are_grouped
  doc: Rely on the input hits being grouped by query protein (so the run is faster
    and uses less memory)
  type: boolean
  inputBinding:
    prefix: --input-hits-are-grouped
- id: overlap_trim_spec
  doc: "(=30/10)            Allow different hits' segments to overlap a bit by trimming\
    \ all segments using spec <trim> of the form n/m (n is a segment length; m is\
    \ the *total* length to be trimmed off both ends) For longer segments, total trim\
    \ stays at m; for shorter, it decreases linearly (to 0 for length 1). To choose:\
    \ set m to the biggest total trim you'd want for a really long segment; then,\
    \ set n to length of the shortest segment you'd want to have that total trim"
  type: string
  inputBinding:
    prefix: --overlap-trim-spec
- id: min_seg_length
  doc: (=7)                 Ignore all segments that are fewer than <length> residues
    long
  type: long
  inputBinding:
    prefix: --min-seg-length
- id: long_domains_preference
  doc: (=0)           Prefer longer hits to degree <val> (<val> may be negative to
    prefer shorter; 0 leaves scores unaffected)
  type: string
  inputBinding:
    prefix: --long-domains-preference
- id: high_scores_preference
  doc: (=0)            Prefer higher scores to degree <val> (<val> may be negative
    to reduce preference for higher scores; 0 leaves scores unaffected)
  type: string
  inputBinding:
    prefix: --high-scores-preference
- id: apply_cath_rules
  doc: '[DEPRECATED] Apply rules specific to CATH-Gene3D during the parsing and processing'
  type: boolean
  inputBinding:
    prefix: --apply-cath-rules
- id: naive_greedy
  doc: Use a naive, greedy approach to resolving (not recommended except for comparison)
  type: boolean
  inputBinding:
    prefix: --naive-greedy
- id: worst_permissible_evalue
  doc: (=0.001)   Ignore any hits with an evalue worse than <evalue>
  type: string
  inputBinding:
    prefix: --worst-permissible-evalue
- id: worst_permissible_bit_score
  doc: (=10)  Ignore any hits with a bitscore worse than <bitscore>
  type: string
  inputBinding:
    prefix: --worst-permissible-bitscore
- id: worst_permissible_score
  doc: Ignore any hits with a score worse than <score>
  type: string
  inputBinding:
    prefix: --worst-permissible-score
- id: filter_query_id
  doc: Ignore all input data except that for query protein(s) <id> (may be specified
    multiple times for multiple query proteins)
  type: string
  inputBinding:
    prefix: --filter-query-id
- id: limit_queries
  doc: '[=<num>(=1)]                   Only process the first <num> query protein(s)
    encountered in the input data'
  type: boolean
  inputBinding:
    prefix: --limit-queries
- id: hits_text_to_file
  doc: Write the resolved hits in plain text to file <file>
  type: File
  inputBinding:
    prefix: --hits-text-to-file
- id: quiet
  doc: Suppress the default output of resolved hits in plain text to stdout
  type: boolean
  inputBinding:
    prefix: --quiet
- id: output_trimmed_hits
  doc: When writing out the final hits, output the hits' starts/stop as they are *after
    trimming*
  type: boolean
  inputBinding:
    prefix: --output-trimmed-hits
- id: summarise_to_file
  doc: Write a brief text summary of the input data to file <file> (or '-' for stdout)
  type: File
  inputBinding:
    prefix: --summarise-to-file
- id: html_output_to_file
  doc: Write the results as HTML to file <file> (or '-' for stdout)
  type: File
  inputBinding:
    prefix: --html-output-to-file
- id: json_output_to_file
  doc: Write the results as JSON to file <file> (or '-' for stdout)
  type: File
  inputBinding:
    prefix: --json-output-to-file
- id: export_css_file
  doc: Export the CSS used in the HTML output to <file> (or '-' for stdout)
  type: File
  inputBinding:
    prefix: --export-css-file
- id: restrict_html_within_body
  doc: Restrict HTML output to the contents of the body tag. The contents should be
    included inside a body tag of class crh-body
  type: boolean
  inputBinding:
    prefix: --restrict-html-within-body
- id: html_max_num_non_soln_hits
  doc: (=80)       Only display up to <num> non-solution hits in the HTML
  type: string
  inputBinding:
    prefix: --html-max-num-non-soln-hits
- id: html_exclude_rejected_hits
  doc: Exclude hits rejected by the score filters from the HTML
  type: boolean
  inputBinding:
    prefix: --html-exclude-rejected-hits
- id: cath_rules_help
  doc: Show help on the rules activated by the (DEPRECATED) --apply-cath-rules option
  type: boolean
  inputBinding:
    prefix: --cath-rules-help
- id: raw_format_help
  doc: Show help about the raw input formats (raw_with_scores and raw_with_evalues)
  type: boolean
  inputBinding:
    prefix: --raw-format-help
outputs: []
cwlVersion: v1.1
baseCommand:
- cath-resolve-hits
