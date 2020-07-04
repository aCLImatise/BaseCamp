class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/alignmentProjector.cwl
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
- id: mfa_seq_input
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: mfa_seq_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- alignmentProjector
