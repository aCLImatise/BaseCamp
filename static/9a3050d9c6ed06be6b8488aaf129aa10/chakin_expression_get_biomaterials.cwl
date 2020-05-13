class: CommandLineTool
id: chakin_expression_get_biomaterials.cwl
inputs:
- id: provider_id
  doc: Limit query to the selected provider
  type: long
  inputBinding:
    prefix: --provider_id
- id: biomaterial_id
  doc: Limit query to the selected biomaterial id
  type: long
  inputBinding:
    prefix: --biomaterial_id
- id: organism_id
  doc: Limit query to the selected organism
  type: long
  inputBinding:
    prefix: --organism_id
- id: biomaterial_name
  doc: Limit query to the selected biomaterial name
  type: string
  inputBinding:
    prefix: --biomaterial_name
- id: analysis_id
  doc: Limit query to the selected analysis_id
  type: long
  inputBinding:
    prefix: --analysis_id
outputs: []
cwlVersion: v1.1
baseCommand:
- chakin
- expression
- get_biomaterials
