class: CommandLineTool
id: ../../../pathwaymatcher.py.cwl
inputs:
- id: in_hv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hv
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pathwaymatcher.py
