class: CommandLineTool
id: gcloud_container_operations.cwl
inputs:
- id: in_zone
  doc: "The compute zone (e.g. us-central1-a) for the cluster. Overrides the\ndefault\
    \ compute/zone property value for this command invocation."
  type: long?
  inputBinding:
    prefix: --zone
- id: in_describe
  doc: Describe an operation.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List operations for container clusters.
  type: string
  inputBinding:
    position: 1
- id: in_wait
  doc: Poll an operation for completion.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- container
- operations
