class: CommandLineTool
id: parsec_toolshed_repositories_update_repository.cwl
inputs:
- id: in_commit_message
  doc: "Commit message used for the underlying Mercurial\nrepository backing Tool\
    \ Shed repository."
  type: string?
  inputBinding:
    prefix: --commit_message
- id: in_tar_ball_path
  doc: Update the contents of a Tool Shed repository with specified tar ball.
  type: string
  inputBinding:
    position: 0
- id: in_zero_dot_five_dot_two
  doc: 'Options:'
  type: double
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
- update_repository
