class: CommandLineTool
id: gcloud_spanner_instance_configs.cwl
inputs:
- id: in_optional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_command
  doc: ''
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
- spanner
- instance-configs
