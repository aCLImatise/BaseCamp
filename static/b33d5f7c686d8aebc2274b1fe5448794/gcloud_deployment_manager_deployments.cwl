class: CommandLineTool
id: gcloud_deployment_manager_deployments.cwl
inputs:
- id: in_deployments
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_cancel_preview
  doc: Cancel a pending or running deployment preview.
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create a deployment.
  type: string
  inputBinding:
    position: 1
- id: in_delete
  doc: Delete a deployment.
  type: string
  inputBinding:
    position: 2
- id: in_describe
  doc: Provide information about a deployment.
  type: string
  inputBinding:
    position: 3
- id: in_list
  doc: List deployments in a project.
  type: string
  inputBinding:
    position: 4
- id: in_stop
  doc: Stop a pending or running deployment update or creation.
  type: string
  inputBinding:
    position: 5
- id: in_update
  doc: Update a deployment based on a provided config file.
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- deployment-manager
- deployments
