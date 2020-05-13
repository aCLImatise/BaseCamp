class: CommandLineTool
id: dicey_hunt.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: catt_acta_a_cat_ca_gt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: g
  doc: '[ --genome ] arg                   genome file'
  type: boolean
  inputBinding:
    prefix: -g
- id: o
  doc: '[ --outfile ] arg                  gzipped output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: m
  doc: '[ --maxmatches ] arg (=1000)       max. number of matches'
  type: boolean
  inputBinding:
    prefix: -m
- id: x
  doc: '[ --maxNeighborhood ] arg (=10000) max. neighborhood size'
  type: boolean
  inputBinding:
    prefix: -x
- id: d
  doc: '[ --distance ] arg (=1)            neighborhood distance'
  type: boolean
  inputBinding:
    prefix: -d
- id: n
  doc: '[ --hamming ]                      use hamming neighborhood instead of  edit
    distance'
  type: boolean
  inputBinding:
    prefix: -n
- id: f
  doc: '[ --forward ]                      only forward matches'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- dicey
- hunt
