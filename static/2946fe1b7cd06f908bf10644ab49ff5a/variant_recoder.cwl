class: CommandLineTool
id: variant_recoder.cwl
inputs:
- id: in_input_data
  doc: Input as string
  type: boolean?
  inputBinding:
    prefix: --input_data
- id: in_input_file
  doc: Input file
  type: boolean?
  inputBinding:
    prefix: --input_file
- id: in_species
  doc: '[species]    Species to use [default: "human"]'
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_pretty
  doc: Print prettified JSON
  type: boolean?
  inputBinding:
    prefix: --pretty
- id: in_ensembl
  doc: ': 100.171092c'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- variant_recoder
