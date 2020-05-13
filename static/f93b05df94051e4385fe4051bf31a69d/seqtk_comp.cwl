class: CommandLineTool
id: seqtk_comp.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: u
  doc: ''
  type: boolean
  inputBinding:
    prefix: -u
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- comp
