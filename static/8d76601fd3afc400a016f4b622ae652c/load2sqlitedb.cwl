class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/load2sqlitedb.cwl
inputs:
- id: species
  doc: ''
  type: string
  inputBinding:
    prefix: --species
- id: dbaccess
  doc: ''
  type: string
  inputBinding:
    prefix: --dbaccess
- id: parameters
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- load2sqlitedb
