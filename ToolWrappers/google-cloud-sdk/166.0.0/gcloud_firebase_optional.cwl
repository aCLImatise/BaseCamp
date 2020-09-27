class: CommandLineTool
id: gcloud_firebase_optional.cwl
inputs:
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_group
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
- firebase
- optional
