class: CommandLineTool
id: get_gffs_from_list.py.cwl
inputs:
- id: in_partial
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --partial
- id: in_get
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_records
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_gff
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 5
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_gffs_from_list.py
