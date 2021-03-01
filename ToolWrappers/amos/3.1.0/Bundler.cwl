class: CommandLineTool
id: Bundler.cwl
inputs:
- id: in_t
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_b
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_an_k
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ype
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_comma_separated_list_of_link_types_to_process
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Bundler
