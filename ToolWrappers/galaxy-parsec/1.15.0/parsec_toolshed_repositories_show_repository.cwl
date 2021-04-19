class: CommandLineTool
id: parsec_toolshed_repositories_show_repository.cwl
inputs:
- id: in_toolshed_id
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
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- toolshed_repositories
- show_repository
