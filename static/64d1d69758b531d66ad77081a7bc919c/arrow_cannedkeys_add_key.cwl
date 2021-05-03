class: CommandLineTool
id: arrow_cannedkeys_add_key.cwl
inputs:
- id: in_metadata
  doc: Optional metadata
  type: string?
  inputBinding:
    prefix: --metadata
- id: in_key
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
  dockerPull: quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- arrow
- cannedkeys
- add_key
