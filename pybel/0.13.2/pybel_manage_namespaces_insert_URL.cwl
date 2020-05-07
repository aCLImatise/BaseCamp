class: CommandLineTool
id: pybel_manage_namespaces_insert_URL.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- namespaces
- insert
- URL
