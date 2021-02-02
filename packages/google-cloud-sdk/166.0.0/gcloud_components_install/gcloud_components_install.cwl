class: CommandLineTool
id: gcloud_components_install.cwl
inputs:
- id: in_component_ids
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_optional
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- components
- install
