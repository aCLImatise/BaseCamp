class: CommandLineTool
id: seqtk_dropse.cwl
inputs:
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- dropse
