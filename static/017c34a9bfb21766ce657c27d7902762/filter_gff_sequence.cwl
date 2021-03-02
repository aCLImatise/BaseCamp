class: CommandLineTool
id: filter_gff_sequence.cwl
inputs:
- id: in_verbose
  doc: "If the GFF file is sorted (all of a sequence\nannotations are contiguos) can\
    \ use less\nmemory, `sort -s -k 1,1` can be used"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_attribute
  doc: "[evalue|bitscore|identity|length]\nAttribute on which to apply the filter\n\
    [default: bitscore]"
  type: boolean?
  inputBinding:
    prefix: --attribute
- id: in_function
  doc: "[mean|median|quantile|std|max|min]\nFunction for filtering  [default: mean]"
  type: boolean?
  inputBinding:
    prefix: --function
- id: in_value
  doc: "Value for the function (used for *std* and\n*quantile*)"
  type: double?
  inputBinding:
    prefix: --value
- id: in_comparison
  doc: "[gt|ge|lt|le]  Type of comparison (e.g. ge -> greater than\nor equal to) \
    \ [default: ge]"
  type: boolean?
  inputBinding:
    prefix: --comparison
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter-gff
- sequence
