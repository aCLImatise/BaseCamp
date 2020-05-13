class: CommandLineTool
id: remove_redundant_variations_variants_file.cwl
inputs:
- id: reference_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: variants_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- remove-redundant-variations
- variants-file
