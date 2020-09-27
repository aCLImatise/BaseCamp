class: CommandLineTool
id: gcloud_compute_backend_buckets.cwl
inputs:
- id: in_create
  doc: Create a backend bucket.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete backend buckets.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe a backend bucket.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine backend buckets.
  type: string
  inputBinding:
    position: 3
- id: in_update
  doc: Update a backend bucket.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- backend-buckets
