class: CommandLineTool
id: orthomclAdjustFasta_taxon_code_fasta_file.cwl
inputs:
- id: id_field
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclAdjustFasta
- taxon_code
- fasta_file
