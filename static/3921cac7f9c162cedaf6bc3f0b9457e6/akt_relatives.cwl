class: CommandLineTool
id: akt_relatives.cwl
inputs:
- id: km_in
  doc: ':                     threshold for relatedness (0.05)'
  type: boolean
  inputBinding:
    prefix: --kmin
- id: its
  doc: ':                      number of iterations to find unrelated (10)'
  type: boolean
  inputBinding:
    prefix: --its
- id: graph_out
  doc: ':         if present output pedigree graph files'
  type: boolean
  inputBinding:
    prefix: --graphout
- id: prefix
  doc: ':                   output file prefix (out)'
  type: boolean
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- akt
- relatives
