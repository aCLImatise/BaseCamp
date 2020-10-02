class: CommandLineTool
id: clan_index.cwl
inputs:
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: in_reference_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index_prefix
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
- clan_index
