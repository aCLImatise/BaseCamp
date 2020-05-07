class: CommandLineTool
id: tripaille_organism_get_taxonomic_ranks.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- organism
- get_taxonomic_ranks
