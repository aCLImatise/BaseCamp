class: CommandLineTool
id: orthomclReduceFasta_fasta_file.cwl
inputs:
- id: tax_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclReduceFasta
- fasta_file
