class: CommandLineTool
id: synapse_cat_syn123.cwl
inputs:
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_u
  doc: ''
  type: string?
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- synapse
- cat
- syn123
