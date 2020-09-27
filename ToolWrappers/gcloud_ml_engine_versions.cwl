class: CommandLineTool
id: gcloud_ml_engine_versions.cwl
inputs:
- id: in_create
  doc: Create a new Cloud ML Engine version.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete an existing Cloud ML Engine version.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe an existing Cloud ML Engine version.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List existing Cloud ML Engine versions.
  type: string
  inputBinding:
    position: 3
- id: in_set_default
  doc: Sets an existing Cloud ML Engine version as the default for its model.
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
- versions
