class: CommandLineTool
id: ribosum2cc.cwl
inputs:
- id: in_ribo_sum_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ribo_sum_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ribosum2cc
