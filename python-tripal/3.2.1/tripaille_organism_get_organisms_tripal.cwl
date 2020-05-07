class: CommandLineTool
id: tripaille_organism_get_organisms_tripal.cwl
inputs:
- id: organism_id
  doc: An organism entity ID
  type: long
  inputBinding:
    prefix: --organism_id
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- organism
- get_organisms_tripal
