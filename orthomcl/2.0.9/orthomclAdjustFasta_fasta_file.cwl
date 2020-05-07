class: CommandLineTool
id: orthomclAdjustFasta_fasta_file.cwl
inputs:
- id: tax_on_code
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: id_field
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclAdjustFasta
- fasta_file
