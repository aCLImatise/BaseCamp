class: CommandLineTool
id: conus_compare.cwl
inputs:
- id: nus
  doc: 'Ambiguous Simple Grammar (G1) '
  type: string
  inputBinding:
    position: 0
- id: una
  doc: 'Another Unambiguous (G3) '
  type: string
  inputBinding:
    position: 1
- id: run
  doc: 'Little Unambiguous (G4) '
  type: string
  inputBinding:
    position: 2
- id: ivo
  doc: 'Simplest Unambiguous (G5) '
  type: string
  inputBinding:
    position: 3
- id: bjk
  doc: 'Pfold grammar (G6) '
  type: string
  inputBinding:
    position: 4
- id: yr_n
  doc: 'Stacking grammar (G2) '
  type: string
  inputBinding:
    position: 5
- id: u_yn
  doc: Stacking analog of UNA (G7)
  type: string
  inputBinding:
    position: 6
- id: ry3
  doc: Stacking analog of RUN (G8)
  type: string
  inputBinding:
    position: 7
- id: bk2
  doc: Stacking parameterization of BJK (G6S)
  type: string
  inputBinding:
    position: 8
- id: h
  doc: '(with -g) shift to hydrogen bonding scoring  '
  type: boolean
  inputBinding:
    prefix: -H
- id: flat
  doc: '(with -g) flat scoring scheme '
  type: boolean
  inputBinding:
    prefix: --flat
outputs: []
cwlVersion: v1.1
baseCommand:
- conus_compare
