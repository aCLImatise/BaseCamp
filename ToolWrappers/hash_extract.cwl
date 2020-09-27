class: CommandLineTool
id: hash_extract.cwl
inputs:
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -I
- id: in_hash_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name
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
- hash_extract
