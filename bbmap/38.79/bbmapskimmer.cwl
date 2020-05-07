class: CommandLineTool
id: bbmapskimmer.sh.cwl
inputs:
- id: best
  doc: (use the first best site)
  type: string
  inputBinding:
    position: 0
- id: toss
  doc: (consider unmapped)
  type: string
  inputBinding:
    position: 1
- id: random
  doc: (select one top-scoring site randomly)
  type: string
  inputBinding:
    position: 2
- id: all
  doc: (retain all top-scoring sites)
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bbmapskimmer.sh
