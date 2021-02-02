class: CommandLineTool
id: pancake_status.cwl
inputs:
- id: in_pan_file
  doc: Name of PanCake Data Object File
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pancake
- status
