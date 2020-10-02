class: CommandLineTool
id: workflow_install.cwl
inputs:
- id: in_workflow_path
  doc: "Path to a workflow file or a directory with multiple\nworkflow files ending\
    \ with \".ga\""
  type: File
  inputBinding:
    prefix: --workflow_path
- id: in_publish_workflows
  doc: "Flag to publish all imported workflows, so that they\nare viewable by other\
    \ users"
  type: boolean
  inputBinding:
    prefix: --publish_workflows
- id: in_verbose
  doc: Increase output verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_galaxy
  doc: Target Galaxy instance URL/IP address
  type: string
  inputBinding:
    prefix: --galaxy
- id: in_user
  doc: Galaxy user email address
  type: string
  inputBinding:
    prefix: --user
- id: in_password
  doc: Password for the Galaxy user
  type: string
  inputBinding:
    prefix: --password
- id: in_api_key
  doc: "Galaxy admin user API key (required if not defined in\nthe tools list file)\n"
  type: File
  inputBinding:
    prefix: --api_key
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- workflow-install
