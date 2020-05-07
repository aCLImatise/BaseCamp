class: CommandLineTool
id: workflow_install.cwl
inputs:
- id: workflow_path
  doc: Path to a workflow file or a directory with multiple workflow files ending
    with ".ga"
  type: string
  inputBinding:
    prefix: --workflow_path
- id: publish_workflows
  doc: Flag to publish all imported workflows, so that they are viewable by other
    users
  type: boolean
  inputBinding:
    prefix: --publish_workflows
- id: verbose
  doc: Increase output verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: galaxy
  doc: Target Galaxy instance URL/IP address
  type: string
  inputBinding:
    prefix: --galaxy
- id: user
  doc: Galaxy user email address
  type: string
  inputBinding:
    prefix: --user
- id: password
  doc: Password for the Galaxy user
  type: string
  inputBinding:
    prefix: --password
- id: api_key
  doc: Galaxy admin user API key (required if not defined in the tools list file)
  type: string
  inputBinding:
    prefix: --api_key
outputs: []
cwlVersion: v1.1
baseCommand:
- workflow-install
