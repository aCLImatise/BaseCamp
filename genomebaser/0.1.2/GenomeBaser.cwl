class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/GenomeBaser.cwl
inputs:
- id: check_deps
  doc: / --no-check_deps  Check that non-python dependencies exist
  type: boolean
  inputBinding:
    prefix: --check_deps
- id: genus
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: species
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_database_location
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- GenomeBaser
