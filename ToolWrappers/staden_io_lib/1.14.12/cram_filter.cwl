class: CommandLineTool
id: cram_filter.cwl
inputs:
- id: in_only_emit_containers
  doc: "[-end]    Only emit containers 'start' to 'end' inclusive.\n'-n 100' is equivalent\
    \ to '-n 100-100'."
  type: long?
  inputBinding:
    prefix: -n
- id: in_limit_output_containers
  doc: "Limit output to containers overlapping 'range'.\n'-r chr1' matches all of\
    \ chr1.\n'-r chr1:1000' is equivalent to '-r chr1:1000-1000'."
  type: long?
  inputBinding:
    prefix: -r
- id: in_drop_quality_strings
  doc: Drop quality strings (CRAM QS).
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_discard_comma_list
  doc: Discard comma separated list of tag types.
  type: string?
  inputBinding:
    prefix: -t
- id: in_keep_only_types
  doc: Keep only aux. tag types in the specified list.
  type: string?
  inputBinding:
    prefix: -T
- id: in_in_dot_cram
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_cram
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
- cram_filter
