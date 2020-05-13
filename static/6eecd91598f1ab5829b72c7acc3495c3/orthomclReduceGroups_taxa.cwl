class: CommandLineTool
id: orthomclReduceGroups_taxa.cwl
inputs:
- id: groups_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tax_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclReduceGroups
- taxa
