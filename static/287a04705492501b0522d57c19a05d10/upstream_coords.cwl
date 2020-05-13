class: CommandLineTool
id: upstream_coords.awk_separation.cwl
inputs:
- id: len
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: separation
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- upstream-coords.awk
- separation
