class: CommandLineTool
id: getAlignmentWindows_XMFA alignment_window length_base output filename.cwl
inputs:
- id: window_shift_amount
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: base_output_file_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- getAlignmentWindows
- XMFA alignment
- window length
- base output filename
