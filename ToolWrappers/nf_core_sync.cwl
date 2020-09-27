class: CommandLineTool
id: nf_core_sync.cwl
inputs:
- id: in_make_template_branch
  doc: Create a TEMPLATE branch if none is found.
  type: boolean
  inputBinding:
    prefix: --make-template-branch
- id: in_from_branch
  doc: The git branch to use to fetch workflow vars.
  type: string
  inputBinding:
    prefix: --from-branch
- id: in_pull_request
  doc: Make a GitHub pull-request with the changes.
  type: boolean
  inputBinding:
    prefix: --pull-request
- id: in_username
  doc: GitHub username for the PR.
  type: string
  inputBinding:
    prefix: --username
- id: in_repository
  doc: GitHub repository name for the PR.
  type: string
  inputBinding:
    prefix: --repository
- id: in_auth_token
  doc: GitHub API personal access token.
  type: string
  inputBinding:
    prefix: --auth-token
- id: in_all
  doc: Sync template for all nf-core pipelines.
  type: boolean
  inputBinding:
    prefix: --all
- id: in_pipeline_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nf-core
- sync
