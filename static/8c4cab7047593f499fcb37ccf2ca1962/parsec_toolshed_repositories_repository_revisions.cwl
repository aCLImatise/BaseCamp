class: CommandLineTool
id: parsec_toolshed_repositories_repository_revisions.cwl
inputs:
- id: in_downloadable
  doc: Can the tool be downloaded
  type: boolean?
  inputBinding:
    prefix: --downloadable
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
- repository_revisions
