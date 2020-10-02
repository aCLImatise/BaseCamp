class: CommandLineTool
id: prune_otus.py.cwl
inputs:
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
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
- prune_otus.py
