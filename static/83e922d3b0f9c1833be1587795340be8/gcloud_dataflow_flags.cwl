class: CommandLineTool
id: gcloud_dataflow_flags.cwl
inputs:
- id: in_g_cloud
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_data_flow
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_optional
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_group
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- dataflow
- flags
