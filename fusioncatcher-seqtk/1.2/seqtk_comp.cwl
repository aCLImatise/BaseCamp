class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqtk_comp.cwl
inputs:
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
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- comp
