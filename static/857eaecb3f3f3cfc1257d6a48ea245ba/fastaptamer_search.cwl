class: CommandLineTool
id: fastaptamer_search.cwl
inputs:
- id: r
  doc: puRines (A/G)
  type: string
  inputBinding:
    position: 0
- id: y
  doc: pYrimidines (C/T)
  type: string
  inputBinding:
    position: 1
- id: w
  doc: Weak (A/T)
  type: string
  inputBinding:
    position: 2
- id: s
  doc: Strong (G/C)
  type: string
  inputBinding:
    position: 3
- id: m
  doc: aMino (A/C)
  type: string
  inputBinding:
    position: 4
- id: k
  doc: Keto (G/T)
  type: string
  inputBinding:
    position: 5
- id: b
  doc: not A
  type: string
  inputBinding:
    position: 6
- id: d
  doc: not C
  type: string
  inputBinding:
    position: 7
- id: h
  doc: not G
  type: string
  inputBinding:
    position: 8
- id: v
  doc: not T
  type: string
  inputBinding:
    position: 9
- id: n
  doc: aNy base (not a gap)
  type: string
  inputBinding:
    position: 10
outputs: []
cwlVersion: v1.1
baseCommand:
- fastaptamer_search
