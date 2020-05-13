class: CommandLineTool
id: R_view.cwl
inputs:
- id: v
  doc: ': be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: maxd
  doc: ': max distance for contact definition  [8.0]  (x>0)'
  type: string
  inputBinding:
    prefix: --maxD
- id: min_l
  doc: ': min (j-i+1) for contact definition  [1]  (n>0)'
  type: string
  inputBinding:
    prefix: --minL
- id: min
  doc: ': Minimum distance btw any two atoms (except water)  [TRUE]'
  type: boolean
  inputBinding:
    prefix: --MIN
- id: cb
  doc: ': Distance btw beta Carbors (alphaC for Gly)'
  type: boolean
  inputBinding:
    prefix: --CB
- id: inter
  doc: ': TRUE to calculate inter-chain contacts'
  type: boolean
  inputBinding:
    prefix: --inter
- id: o
  doc: ': send output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: to_l
  doc: ': tolerance  [1e-6]'
  type: string
  inputBinding:
    prefix: --tol
- id: seed
  doc: ': set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- R-view
