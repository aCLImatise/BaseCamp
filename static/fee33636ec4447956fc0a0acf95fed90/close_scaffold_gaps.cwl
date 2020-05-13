class: CommandLineTool
id: close_scaffold_gaps.sh.cwl
inputs:
- id: merge_scaffold_ssh
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- close_scaffold_gaps.sh
