class: CommandLineTool
id: tripaille_entity_get_entities.cwl
inputs:
- id: in_entity
  doc: Name of the entity type (e.g. Organism)
  type: string
  inputBinding:
    prefix: --entity
- id: in_entity_id
  doc: ID of an entity
  type: long
  inputBinding:
    prefix: --entity_id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- entity
- get_entities
