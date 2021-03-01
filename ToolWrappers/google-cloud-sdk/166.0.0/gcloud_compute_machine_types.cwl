class: CommandLineTool
id: gcloud_compute_machine_types.cwl
inputs:
- id: in_types
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Describe a Google Compute Engine machine type.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List Google Compute Engine machine types.
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
- compute
- machine-types
