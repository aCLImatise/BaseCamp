class: CommandLineTool
id: pick_otus_condense.py.cwl
inputs:
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pick_otus_condense.py
