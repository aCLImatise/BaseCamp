class: CommandLineTool
id: remove_redundant_variations.cwl
inputs:
- id: in_reference_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_variants_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- remove-redundant-variations
