class: CommandLineTool
id: _prophet.cwl
inputs:
- id: gap_open
  doc: float      [1.0] Gap opening coefficient (Number from 0.000 to 100.000)
  type: boolean
  inputBinding:
    prefix: -gapopen
- id: gap_extend
  doc: float      [1.0] Gap extension coefficient (Number from 0.000 to 100.000)
  type: boolean
  inputBinding:
    prefix: -gapextend
outputs: []
cwlVersion: v1.1
baseCommand:
- _prophet
