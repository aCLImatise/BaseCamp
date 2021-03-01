class: CommandLineTool
id: filter_variations.cwl
inputs:
- id: in_arg_maximum_allowed_distance
  doc: '[ --max_offset ] arg (=100)     Maximum allowed distance.'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_arg_maximum_allowed_difference
  doc: '[ --max_length_diff ] arg (=20) Maximum allowed length difference.'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_arg_minimum_length
  doc: "[ --min_length ] arg (=10)      Minimum length of variations to be\nwritten.\n"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_variants_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter-variations
