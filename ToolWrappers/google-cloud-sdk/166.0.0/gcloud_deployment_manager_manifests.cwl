class: CommandLineTool
id: gcloud_deployment_manager_manifests.cwl
inputs:
- id: in_deployment
  doc: "To see the list of all manifests in a deployment, run:\n$ gcloud deployment-manager\
    \ manifests list --deployment my-deployment\n"
  type: string
  inputBinding:
    prefix: --deployment
- id: in_manifests
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Provide information about a manifest.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List manifests in a deployment.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- deployment-manager
- manifests
