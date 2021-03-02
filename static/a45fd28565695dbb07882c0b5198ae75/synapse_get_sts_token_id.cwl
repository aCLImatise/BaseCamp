class: CommandLineTool
id: synapse_get_sts_token_id.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_synapse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_get_sts_token
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- synapse
- get-sts-token
- id
