class: CommandLineTool
id: nebulizer_create_batch_users_START.cwl
inputs:
- id: in_nebulizer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_create_batch_users
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_galaxy
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_template
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_end
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_batch_users
- START
