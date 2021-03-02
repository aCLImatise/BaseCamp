class: CommandLineTool
id: DASmap.cwl
inputs:
- id: in_p
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DASmap
