class: CommandLineTool
id: pslToBed_psl.cwl
inputs:
- id: bed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pslToBed
- psl
