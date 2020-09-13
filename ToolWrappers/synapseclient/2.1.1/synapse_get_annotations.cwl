class: CommandLineTool
id: ../../../synapse_get_annotations.cwl
inputs:
- id: in_id
  doc: Synapse ID of entity whose annotations we are
  type: long
  inputBinding:
    prefix: --id
- id: in_o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
- get-annotations
