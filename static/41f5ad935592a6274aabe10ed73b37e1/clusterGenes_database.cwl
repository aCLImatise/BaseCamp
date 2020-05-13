class: CommandLineTool
id: clusterGenes_database.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: table_n
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- clusterGenes
- database
