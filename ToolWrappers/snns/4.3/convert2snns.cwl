class: CommandLineTool
id: convert2snns.cwl
inputs:
- id: in_control_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convert2snns
