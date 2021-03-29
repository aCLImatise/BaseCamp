class: CommandLineTool
id: nf_core_sync.cwl
inputs:
- id: in_from_branch
  doc: The git branch to use to fetch workflow vars.
  type: string?
  inputBinding:
    prefix: --from-branch
- id: in_pull_request
  doc: Make a GitHub pull-request with the changes.
  type: boolean?
  inputBinding:
    prefix: --pull-request
- id: in_repository
  doc: 'GitHub PR: target repository.'
  type: string?
  inputBinding:
    prefix: --repository
- id: in_username
  doc: 'GitHub PR: auth username.'
  type: string?
  inputBinding:
    prefix: --username
- id: in_pipeline_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- sync
