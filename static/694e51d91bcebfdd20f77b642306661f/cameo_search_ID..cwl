class: CommandLineTool
id: cameo_search_ID..cwl
inputs:
- id: in_cameo
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_search
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_product
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cameo
- search
- ID.
