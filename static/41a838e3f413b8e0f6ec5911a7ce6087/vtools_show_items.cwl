class: CommandLineTool
id: vtools_show_items.cwl
inputs:
- id: in_v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_v_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_show
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools
- show
- items
