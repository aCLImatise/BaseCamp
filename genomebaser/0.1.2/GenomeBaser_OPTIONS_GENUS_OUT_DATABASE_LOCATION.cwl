class: CommandLineTool
id: GenomeBaser_OPTIONS_GENUS_OUT_DATABASE_LOCATION.cwl
inputs:
- id: species
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_database_location
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- GenomeBaser
- OPTIONS
- GENUS
- OUT_DATABASE_LOCATION
