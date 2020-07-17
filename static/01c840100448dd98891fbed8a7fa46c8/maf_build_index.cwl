class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/maf_build_index.py.cwl
inputs:
- id: species
  doc: only index the position of the block in the listed species
  type: string
  inputBinding:
    prefix: --species
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
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_build_index.py
