class: CommandLineTool
id: ../../../synapse_get_sts_token.cwl
inputs:
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
- get-sts-token
