class: CommandLineTool
id: ../../../gsutil_label.cwl
inputs:
- id: in_value
  doc: :<value>
  type: string
  inputBinding:
    prefix: -l
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_command_dot
  doc: SET
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- label
