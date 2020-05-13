class: CommandLineTool
id: atlas_place.cwl
inputs:
- id: sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- atlas
- place
