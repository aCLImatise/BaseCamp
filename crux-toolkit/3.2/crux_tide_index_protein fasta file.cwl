class: CommandLineTool
id: crux_tide_index_protein fasta file.cwl
inputs:
- id: index_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- tide-index
- protein fasta file
