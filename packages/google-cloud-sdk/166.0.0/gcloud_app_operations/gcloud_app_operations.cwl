class: CommandLineTool
id: gcloud_app_operations.cwl
inputs:
- id: in_describe
  doc: Describes the operation.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List the operations.
  type: string
  inputBinding:
    position: 1
- id: in_wait
  doc: Polls an operation until completion.
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
- app
- operations
