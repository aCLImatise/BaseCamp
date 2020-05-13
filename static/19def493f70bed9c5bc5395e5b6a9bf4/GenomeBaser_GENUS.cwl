class: CommandLineTool
id: GenomeBaser_GENUS.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genus
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: species
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_database_location
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- GenomeBaser
- GENUS
