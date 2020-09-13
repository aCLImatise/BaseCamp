class: CommandLineTool
id: ../../../variant_recoder.cwl
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
- id: in_ensembl
  doc: ': 100.171092c'
  type: string
  inputBinding:
    position: 0
- id: in_ensembl_func_gen
  doc: ': 100.f0c3948'
  type: string
  inputBinding:
    position: 1
- id: in_ensembl_io
  doc: ': 100.f87ae4f'
  type: string
  inputBinding:
    position: 2
- id: in_ensembl_variation
  doc: ': 100.b220ff4'
  type: string
  inputBinding:
    position: 3
- id: in_ensembl_vep
  doc: ': 100.3'
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- variant_recoder
