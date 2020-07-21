class: CommandLineTool
id: ../../../dicey_hunt.cwl
inputs:
- id: arg_genome_file
  doc: '[ --genome ] arg                   genome file'
  type: boolean
  inputBinding:
    prefix: -g
- id: arg_gzipped_output
  doc: '[ --outfile ] arg                  gzipped output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_max_number
  doc: '[ --maxmatches ] arg (=1000)       max. number of matches'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_neighborhood_size
  doc: '[ --maxNeighborhood ] arg (=10000) max. neighborhood size'
  type: boolean
  inputBinding:
    prefix: -x
- id: arg_neighborhood_distance
  doc: '[ --distance ] arg (=1)            neighborhood distance'
  type: boolean
  inputBinding:
    prefix: -d
- id: use_hamming_neighborhood
  doc: '[ --hamming ]                      use hamming neighborhood instead of  edit
    distance'
  type: boolean
  inputBinding:
    prefix: -n
- id: only_forward_matches
  doc: '[ --forward ]                      only forward matches'
  type: boolean
  inputBinding:
    prefix: -f
- id: catt_acta_a_cat_ca_gt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dicey
- hunt
