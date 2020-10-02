class: CommandLineTool
id: skmer_query_library.cwl
inputs:
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: in_e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: in_sk_mer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_query
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_library
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
- skmer
- query
- library
