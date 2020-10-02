class: CommandLineTool
id: fuma_list_to_boolean_list.cwl
inputs:
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fuma-list-to-boolean-list
