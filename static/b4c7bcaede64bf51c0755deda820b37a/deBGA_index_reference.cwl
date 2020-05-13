class: CommandLineTool
id: deBGA_index_reference.fasta.cwl
inputs:
- id: index_route
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- deBGA
- index
- reference.fasta
