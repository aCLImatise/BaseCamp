class: CommandLineTool
id: atlas_place.cwl
inputs:
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    prefix: --tree
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: in_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: in_db_name
  doc: ''
  type: string
  inputBinding:
    prefix: --db_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- atlas
- place
