class: CommandLineTool
id: mummer.cwl
inputs:
- id: in_mum
  doc: compute maximal matches that are unique in both sequences
  type: boolean?
  inputBinding:
    prefix: -mum
- id: in_m_umc_and
  doc: same as -mumreference
  type: boolean?
  inputBinding:
    prefix: -mumcand
- id: in_mum_reference
  doc: "compute maximal matches that are unique in the reference-\nsequence but not\
    \ necessarily in the query-sequence (default)"
  type: boolean?
  inputBinding:
    prefix: -mumreference
- id: in_max_match
  doc: compute all maximal matches regardless of their uniqueness
  type: boolean?
  inputBinding:
    prefix: -maxmatch
- id: in_match_only_characters
  doc: "match only the characters a, c, g, or t\nthey can be in upper or in lower\
    \ case"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_set_minimum_length
  doc: "set the minimum length of a match\nif not set, the default value is 20"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_compute_forward_reverse
  doc: compute forward and reverse complement matches
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_only_compute_reverse
  doc: only compute reverse complement matches
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_show_matching_substrings
  doc: show the matching substrings
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_report_queryposition_reverse
  doc: "report the query-position of a reverse complement match\nrelative to the original\
    \ query sequence"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_force_column_output
  doc: "force 4 column output format regardless of the number of\nreference sequence\
    \ inputs"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_show_length_query
  doc: show the length of the query sequences on the header line
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_help
  doc: show possible options
  type: boolean?
  inputBinding:
    prefix: -help
- id: in_reference_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_query_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mummer
