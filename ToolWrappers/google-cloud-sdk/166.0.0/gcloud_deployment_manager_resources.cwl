class: CommandLineTool
id: gcloud_deployment_manager_resources.cwl
inputs:
- id: in_deployment
  doc: Deployment name
  type: string?
  inputBinding:
    prefix: --deployment
- id: in_resources
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Provide information about a resource.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List resources in a deployment.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- deployment-manager
- resources
