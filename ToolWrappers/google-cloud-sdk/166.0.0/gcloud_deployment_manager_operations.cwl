class: CommandLineTool
id: gcloud_deployment_manager_operations.cwl
inputs:
- id: in_operations
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Provide information about an operation.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List operations in a project.
  type: string
  inputBinding:
    position: 1
- id: in_wait
  doc: Wait for all operations specified to complete before returning.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- deployment-manager
- operations
