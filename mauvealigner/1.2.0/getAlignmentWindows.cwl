class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/getAlignmentWindows.cwl
inputs:
- id: x_mfa_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: window_length
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: window_shift_amount
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: base_output_filename
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- getAlignmentWindows
