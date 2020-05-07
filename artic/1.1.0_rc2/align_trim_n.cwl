class: CommandLineTool
id: align_trim_n.cwl
inputs:
- id: n_bases
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- align_trim_n
