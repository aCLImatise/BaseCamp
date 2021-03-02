class: CommandLineTool
id: join_into_groups_of.cwl
inputs:
- id: in_null
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --null
- id: in_interactive
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --interactive
- id: in_zero_pr_tx
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -0prtx
- id: in_xargs
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
  dockerPull: quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1
cwlVersion: v1.1
baseCommand:
- join-into-groups-of
