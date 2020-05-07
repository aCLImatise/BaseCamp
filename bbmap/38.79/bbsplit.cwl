class: CommandLineTool
id: bbsplit.sh.cwl
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
  doc: (retain all top-scoring sites.  Does not work yet with SAM output)
  type: string
  inputBinding:
    position: 3
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
- id: all
  doc: (write a copy to the output for each reference to which it maps)
  type: string
  inputBinding:
    position: 2
- id: split
  doc: (write a copy to the AMBIGUOUS_ output for each reference to which it maps)
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bbsplit.sh
