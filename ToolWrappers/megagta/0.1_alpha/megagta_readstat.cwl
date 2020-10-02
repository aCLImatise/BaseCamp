class: CommandLineTool
id: megagta_readstat.cwl
inputs:
- id: in_cat
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
- megagta
- readstat
