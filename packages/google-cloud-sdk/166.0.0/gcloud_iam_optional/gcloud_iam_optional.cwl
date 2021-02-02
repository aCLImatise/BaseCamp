class: CommandLineTool
id: gcloud_iam_optional.cwl
inputs:
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_group_vertical_line_command
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
- iam
- optional
