class: CommandLineTool
id: akt_unrelated.cwl
inputs:
- id: km_in
  doc: ':                     threshold for relatedness (0.025)'
  type: boolean
  inputBinding:
    prefix: --kmin
- id: its
  doc: ':                      number of iterations to find unrelated (10)'
  type: boolean
  inputBinding:
    prefix: --its
outputs: []
cwlVersion: v1.1
baseCommand:
- akt
- unrelated
