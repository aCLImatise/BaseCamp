class: CommandLineTool
id: gcloud_compute_routes.cwl
inputs:
- id: in_create
  doc: Create a new route.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete routes.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe a route.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine routes.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- routes
