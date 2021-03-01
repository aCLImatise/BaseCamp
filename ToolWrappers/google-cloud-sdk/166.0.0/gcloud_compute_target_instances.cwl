class: CommandLineTool
id: gcloud_compute_target_instances.cwl
inputs:
- id: in_create
  doc: Create a target instance for handling traffic from a forwarding rule.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete target instances.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe a target instance.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine target instances.
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
- target-instances
