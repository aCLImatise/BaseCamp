class: CommandLineTool
id: ../../../filter_variations.cwl
inputs:
- id: arg_maximum_allowed_distance
  doc: '[ --max_offset ] arg (=100)     Maximum allowed distance.'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_maximum_allowed_difference
  doc: '[ --max_length_diff ] arg (=20) Maximum allowed length difference.'
  type: boolean
  inputBinding:
    prefix: -z
- id: arg_minimum_length
  doc: '[ --min_length ] arg (=10)      Minimum length of variations to be  written.'
  type: boolean
  inputBinding:
    prefix: -l
- id: variants_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- filter-variations
