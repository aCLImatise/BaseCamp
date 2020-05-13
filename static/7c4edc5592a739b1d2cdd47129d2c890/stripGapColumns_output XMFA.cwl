class: CommandLineTool
id: stripGapColumns_output XMFA.cwl
inputs:
- id: input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- stripGapColumns
- output XMFA
