class: CommandLineTool
id: ../../../lav_to_axt.py.cwl
inputs:
- id: in_silent
  doc: ''
  type: boolean
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lav_to_axt.py
