class: CommandLineTool
id: atlas_walk.cwl
inputs:
- id: sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
- id: probe_set
  doc: probe_set
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- atlas
- walk
