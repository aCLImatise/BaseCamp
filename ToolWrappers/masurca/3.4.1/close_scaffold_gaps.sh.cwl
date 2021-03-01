class: CommandLineTool
id: close_scaffold_gaps.sh.cwl
inputs:
- id: in_t
  doc: ''
  type: long?
  inputBinding:
    prefix: -t
- id: in_q
  doc: ''
  type: string?
  inputBinding:
    prefix: -q
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_merge_scaffolds_dots_h
  doc: ''
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
- close_scaffold_gaps.sh
