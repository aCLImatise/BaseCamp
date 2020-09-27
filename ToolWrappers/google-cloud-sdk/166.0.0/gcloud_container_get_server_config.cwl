class: CommandLineTool
id: gcloud_container_get_server_config.cwl
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- container
- get-server-config
