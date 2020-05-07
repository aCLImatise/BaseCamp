class: CommandLineTool
id: maf_build_index.py.cwl
inputs:
- id: maf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: species
  doc: only index the position of the block in the listed species
  type: string
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_build_index.py
