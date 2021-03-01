class: CommandLineTool
id: get_abundance_post_collapse.py.cwl
inputs:
- id: in_get
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_abundance
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_abundance_post_collapse.py
