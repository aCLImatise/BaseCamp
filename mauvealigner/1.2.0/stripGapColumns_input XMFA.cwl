class: CommandLineTool
id: stripGapColumns_input XMFA.cwl
inputs:
- id: output_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- stripGapColumns
- input XMFA
