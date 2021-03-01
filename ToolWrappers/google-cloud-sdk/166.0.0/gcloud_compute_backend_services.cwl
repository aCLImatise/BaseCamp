class: CommandLineTool
id: gcloud_compute_backend_services.cwl
inputs:
- id: in_add_backend
  doc: Add a backend to a backend service.
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create a backend service.
  type: string
  inputBinding:
    position: 1
- id: in_delete
  doc: Delete backend services.
  type: string
  inputBinding:
    position: 2
- id: in_describe
  doc: Display detailed information about a backend service.
  type: string
  inputBinding:
    position: 3
- id: in_edit
  doc: Modify backend services.
  type: string
  inputBinding:
    position: 4
- id: in_get_health
  doc: Get backend health statuses from a backend service.
  type: string
  inputBinding:
    position: 5
- id: in_list
  doc: List Google Compute Engine backend services.
  type: string
  inputBinding:
    position: 6
- id: in_remove_backend
  doc: Remove a backend from a backend service.
  type: string
  inputBinding:
    position: 7
- id: in_update
  doc: Update a backend service.
  type: string
  inputBinding:
    position: 8
- id: in_update_backend
  doc: Update an existing backend in a backend service.
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- backend-services
