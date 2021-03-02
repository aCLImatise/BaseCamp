class: CommandLineTool
id: gcloud_service_management_deploy.cwl
inputs:
- id: in_async
  doc: "Display information about the operation in progress, without waiting\nfor\
    \ the operation to complete."
  type: boolean?
  inputBinding:
    prefix: --async
- id: in_force
  doc: "Force the deployment even if any hazardous changes to the service\nconfiguration\
    \ are detected."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_validate_only
  doc: "If included, the command will only validate the service\nconfiguration(s).\
    \ No configuration(s) will be persisted."
  type: boolean?
  inputBinding:
    prefix: --validate-only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- service-management
- deploy
