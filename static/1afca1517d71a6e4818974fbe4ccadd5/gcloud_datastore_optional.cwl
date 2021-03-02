class: CommandLineTool
id: gcloud_datastore_optional.cwl
inputs:
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- datastore
- optional
