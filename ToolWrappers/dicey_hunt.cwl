class: CommandLineTool
id: dicey_hunt.cwl
inputs:
- id: in_arg_genome_file
  doc: '[ --genome ] arg                   genome file'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_arg_gzipped_output
  doc: '[ --outfile ] arg                  gzipped output file'
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_max_number
  doc: '[ --maxmatches ] arg (=1000)       max. number of matches'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_neighborhood_size
  doc: '[ --maxNeighborhood ] arg (=10000) max. neighborhood size'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_arg_neighborhood_distance
  doc: '[ --distance ] arg (=1)            neighborhood distance'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_use_hamming_neighborhood
  doc: "[ --hamming ]                      use hamming neighborhood instead of\nedit\
    \ distance"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_only_forward_matches
  doc: '[ --forward ]                      only forward matches'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_catt_acta_a_cat_ca_gt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_gzipped_output
  doc: '[ --outfile ] arg                  gzipped output file'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_gzipped_output)
cwlVersion: v1.1
baseCommand:
- dicey
- hunt
