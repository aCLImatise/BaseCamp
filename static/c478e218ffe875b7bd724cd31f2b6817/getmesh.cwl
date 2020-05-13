class: CommandLineTool
id: getmesh.cwl
inputs:
- id: o
  doc: Output list [File Out]
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- getmesh
