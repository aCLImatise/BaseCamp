class: CommandLineTool
id: planemo_workflow_upload.cwl
inputs:
- id: in_namespace
  doc: "Organization or username under which to create or update\nworkflow repository.\
    \ Must be a valid github username or\norganization"
  type: string?
  inputBinding:
    prefix: --namespace
- id: in_dry_run
  doc: Don't execute action, show preview of action.
  type: boolean?
  inputBinding:
    prefix: --dry_run
- id: in_target
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
  dockerPull: quay.io/biocontainers/planemo:0.74.2--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- workflow_upload
