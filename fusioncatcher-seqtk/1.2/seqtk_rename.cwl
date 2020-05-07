class: CommandLineTool
id: seqtk_rename.cwl
inputs:
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- rename
