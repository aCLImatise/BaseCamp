class: CommandLineTool
id: filter_keep_otus_by_sample.py.cwl
inputs:
- id: in_o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: in_k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter_keep_otus_by_sample.py
