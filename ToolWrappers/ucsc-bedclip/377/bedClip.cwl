class: CommandLineTool
id: bedClip.cwl
inputs:
- id: in_truncate
  doc: "- truncate items that span ends of chrom instead of the\ndefault of dropping\
    \ the items"
  type: boolean?
  inputBinding:
    prefix: -truncate
- id: in_verbose
  doc: '- set to get list of lines clipped and why'
  type: long?
  inputBinding:
    prefix: -verbose
- id: in_input_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chrom_dot_sizes
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
- bedClip
