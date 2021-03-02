class: CommandLineTool
id: gcloud_compute_accelerator_types.cwl
inputs:
- id: in_types
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Describe Google Compute Engine accelerator types.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List Google Compute Engine accelerator types.
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
- accelerator-types
