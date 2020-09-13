class: CommandLineTool
id: ../../../synapse_delete_syn123.cwl
inputs:
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_u
  doc: ''
  type: string
  inputBinding:
    prefix: -u
- id: in_synapse
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
- synapse
- delete
- syn123
