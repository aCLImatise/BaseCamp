class: CommandLineTool
id: seqtk_randbase.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- randbase
