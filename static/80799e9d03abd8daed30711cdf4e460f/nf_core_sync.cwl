class: CommandLineTool
id: nf_core_sync.cwl
inputs:
- id: make_template_branch
  doc: Create a TEMPLATE branch if none is found.
  type: boolean
  inputBinding:
    prefix: --make-template-branch
- id: from_branch
  doc: The git branch to use to fetch workflow vars.
  type: string
  inputBinding:
    prefix: --from-branch
- id: pull_request
  doc: Make a GitHub pull-request with the changes.
  type: boolean
  inputBinding:
    prefix: --pull-request
- id: username
  doc: GitHub username for the PR.
  type: string
  inputBinding:
    prefix: --username
- id: repository
  doc: GitHub repository name for the PR.
  type: string
  inputBinding:
    prefix: --repository
- id: auth_token
  doc: GitHub API personal access token.
  type: string
  inputBinding:
    prefix: --auth-token
- id: all
  doc: Sync template for all nf-core pipelines.
  type: boolean
  inputBinding:
    prefix: --all
outputs: []
cwlVersion: v1.1
baseCommand:
- nf-core
- sync
