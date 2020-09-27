class: CommandLineTool
id: gcloud_ml_engine_operations.cwl
inputs:
- id: in_cancel
  doc: Cancel a Cloud ML Engine operation.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete a Cloud ML Engine operation.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe a Cloud ML Engine operation.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List existing Cloud ML Engine jobs.
  type: string
  inputBinding:
    position: 3
- id: in_wait
  doc: Wait for a Cloud ML Engine operation to complete.
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
- ml-engine
- operations
