class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sparse_init.cwl
inputs:
- id: dbname
  doc: 'Name for the new database to be generated. '
  type: string
  inputBinding:
    prefix: --dbname
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- init
