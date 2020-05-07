class: CommandLineTool
id: Catrack.cwl
inputs:
- id: v
  doc: ': verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: ': delete individual blocks after a successful concatenation'
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: ': force overwrite of track if already present'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- Catrack
