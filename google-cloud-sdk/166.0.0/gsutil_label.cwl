class: CommandLineTool
id: gsutil_label.cwl
inputs:
- id: l
  doc: Add or update a label with the specified key and value.
  type: boolean
  inputBinding:
    prefix: -l
- id: d
  doc: Remove the label with the specified key.
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- label
