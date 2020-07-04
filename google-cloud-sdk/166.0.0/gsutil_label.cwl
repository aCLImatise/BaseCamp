class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gsutil_label.cwl
inputs:
- id: add_update_label
  doc: Add or update a label with the specified key and value.
  type: boolean
  inputBinding:
    prefix: -l
- id: remove_label_specified
  doc: Remove the label with the specified key.
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- label
