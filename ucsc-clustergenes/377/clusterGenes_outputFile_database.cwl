class: CommandLineTool
id: clusterGenes_outputFile_database.cwl
inputs:
- id: table_n
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- clusterGenes
- outputFile
- database
