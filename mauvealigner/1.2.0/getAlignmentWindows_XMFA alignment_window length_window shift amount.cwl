class: CommandLineTool
id: getAlignmentWindows_XMFA alignment_window length_window shift amount.cwl
inputs:
- id: base_output_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- getAlignmentWindows
- XMFA alignment
- window length
- window shift amount
