class: CommandLineTool
id: pslToBed_bed.cwl
inputs:
- id: psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslToBed
- bed
