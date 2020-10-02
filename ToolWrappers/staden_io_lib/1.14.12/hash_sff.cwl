class: CommandLineTool
id: hash_sff.cwl
inputs:
- id: in_t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_sff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hash_sff
