class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mapPacBio.sh.cwl
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
- id: orientation_dot
  doc: Set to false for long-mate-pair libraries.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mapPacBio.sh
