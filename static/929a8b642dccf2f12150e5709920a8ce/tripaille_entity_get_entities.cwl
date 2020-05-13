class: CommandLineTool
id: tripaille_entity_get_entities.cwl
inputs:
- id: entity
  doc: Name of the entity type (e.g. Organism)
  type: string
  inputBinding:
    prefix: --entity
- id: entity_id
  doc: ID of an entity
  type: long
  inputBinding:
    prefix: --entity_id
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- entity
- get_entities
