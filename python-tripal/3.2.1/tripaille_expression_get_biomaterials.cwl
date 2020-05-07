class: CommandLineTool
id: tripaille_expression_get_biomaterials.cwl
inputs:
- id: biomaterial_name
  doc: Limit query to the selected biomaterial
  type: string
  inputBinding:
    prefix: --biomaterial_name
- id: provider_id
  doc: Limit query to the selected provider
  type: string
  inputBinding:
    prefix: --provider_id
- id: biomaterial_id
  doc: Limit query to the selected biomaterial
  type: string
  inputBinding:
    prefix: --biomaterial_id
- id: organism_id
  doc: Limit query to the selected organism
  type: string
  inputBinding:
    prefix: --organism_id
- id: dbxref_id
  doc: Limit query to the selected ref
  type: string
  inputBinding:
    prefix: --dbxref_id
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- expression
- get_biomaterials
