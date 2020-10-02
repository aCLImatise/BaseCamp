class: CommandLineTool
id: clan_search.cwl
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
- id: in_o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_read_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reference_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_index_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- clan_search
