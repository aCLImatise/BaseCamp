class: CommandLineTool
id: nest_serial.cwl
inputs:
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nest_serial
