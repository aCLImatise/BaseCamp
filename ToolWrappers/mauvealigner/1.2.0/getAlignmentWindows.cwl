class: CommandLineTool
id: getAlignmentWindows.cwl
inputs:
- id: in_x_mfa_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_window_length
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_window_shift_amount
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_base_output_filename
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_base_output_filename
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_base_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- getAlignmentWindows
