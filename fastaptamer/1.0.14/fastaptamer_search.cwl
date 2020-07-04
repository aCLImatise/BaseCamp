class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastaptamer_search.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: as_lashtslashgslashcslashu
  doc: single bases
  type: string
  inputBinding:
    position: 0
- id: purines_ag
  doc: puRines (A/G)
  type: string
  inputBinding:
    position: 1
- id: pyrimidines_ct
  doc: pYrimidines (C/T)
  type: string
  inputBinding:
    position: 2
- id: weak_at
  doc: Weak (A/T)
  type: string
  inputBinding:
    position: 3
- id: strong_gc
  doc: Strong (G/C)
  type: string
  inputBinding:
    position: 4
- id: amino_ac
  doc: aMino (A/C)
  type: string
  inputBinding:
    position: 5
- id: keto_gt
  doc: Keto (G/T)
  type: string
  inputBinding:
    position: 6
- id: not_a
  doc: not A
  type: string
  inputBinding:
    position: 7
- id: not_c
  doc: not C
  type: string
  inputBinding:
    position: 8
- id: not_g
  doc: not G
  type: string
  inputBinding:
    position: 9
- id: not_t
  doc: not T
  type: string
  inputBinding:
    position: 10
- id: any_base_gap
  doc: aNy base (not a gap)
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- fastaptamer_search
