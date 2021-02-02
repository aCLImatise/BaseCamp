class: CommandLineTool
id: ctg2umdcontig.cwl
inputs:
- id: in_file_dot_ctg
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_file_dot_id_map
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_tigr
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ctg2umdcontig
