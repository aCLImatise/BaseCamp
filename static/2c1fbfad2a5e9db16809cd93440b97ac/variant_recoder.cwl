class: CommandLineTool
id: variant_recoder.cwl
inputs:
- id: in_input_data
  doc: '| --id    Input as string'
  type: boolean
  inputBinding:
    prefix: --input_data
- id: in_input_file
  doc: '| -i      Input file'
  type: boolean
  inputBinding:
    prefix: --input_file
- id: in_species
  doc: '[species]    Species to use [default: "human"]'
  type: boolean
  inputBinding:
    prefix: --species
- id: in_pretty
  doc: Print prettified JSON
  type: boolean
  inputBinding:
    prefix: --pretty
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- variant_recoder
