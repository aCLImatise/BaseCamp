class: CommandLineTool
id: miR_PREFeR.py.cwl
inputs:
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_config_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- miR_PREFeR.py
