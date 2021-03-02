class: CommandLineTool
id: mixcr_extend.cwl
inputs:
- id: in_j_anchor
  doc: J extension anchor point.
  type: string?
  inputBinding:
    prefix: --j-anchor
- id: in_min_j_score
  doc: Minimal J hit score alignment to perform right extension.
  type: long?
  inputBinding:
    prefix: --min-j-score
- id: in_min_v_score
  doc: Minimal V hit score to perform left extension.
  type: long?
  inputBinding:
    prefix: --min-v-score
- id: in_overwrite_if_required
  doc: "Overwrite output file if it is corrupted or if it was generated from\ndifferent\
    \ input file or with different parameters. -f / --force-overwrite\noverrides this\
    \ option."
  type: boolean?
  inputBinding:
    prefix: --overwrite-if-required
- id: in_v_anchor
  doc: V extension anchor point.
  type: string?
  inputBinding:
    prefix: --v-anchor
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_chains
  doc: Apply procedure only to alignments with specific immunological-receptor
  type: string?
  inputBinding:
    prefix: --chains
- id: in_json_report
  doc: JSON formatted report file
  type: File?
  inputBinding:
    prefix: --json-report
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean?
  inputBinding:
    prefix: --no-warnings
- id: in_quality
  doc: Quality score value to assign imputed sequences
  type: string?
  inputBinding:
    prefix: --quality
- id: in_report
  doc: "Report file (human readable version, see -j / --json-report for machine\n\
    readable report)"
  type: File?
  inputBinding:
    prefix: --report
- id: in_threads
  doc: Processing threads
  type: string?
  inputBinding:
    prefix: --threads
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_chains_dot
  doc: -f, --force-overwrite     Force overwrite of output file(s).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mixcr
- extend
