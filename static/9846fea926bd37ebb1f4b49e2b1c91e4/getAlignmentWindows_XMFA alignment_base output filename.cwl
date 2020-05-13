class: CommandLineTool
id: getAlignmentWindows_XMFA alignment_base output filename.cwl
inputs:
- id: window_length
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: window_shift_amount
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: base_output_file_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- getAlignmentWindows
- XMFA alignment
- base output filename
