class: CommandLineTool
id: synapse_get_sts_token.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_id
  doc: Synapse id
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- synapse
- get-sts-token
