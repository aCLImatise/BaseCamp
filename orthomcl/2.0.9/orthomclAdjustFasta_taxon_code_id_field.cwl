class: CommandLineTool
id: orthomclAdjustFasta_taxon_code_id_field.cwl
inputs:
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: id_field
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclAdjustFasta
- taxon_code
- id_field
