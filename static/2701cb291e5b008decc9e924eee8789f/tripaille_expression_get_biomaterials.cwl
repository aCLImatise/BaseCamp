class: CommandLineTool
id: tripaille_expression_get_biomaterials.cwl
inputs:
- id: in_biomaterial_name
  doc: Limit query to the selected biomaterial
  type: string?
  inputBinding:
    prefix: --biomaterial_name
- id: in_provider_id
  doc: Limit query to the selected provider
  type: string?
  inputBinding:
    prefix: --provider_id
- id: in_biomaterial_id
  doc: Limit query to the selected biomaterial
  type: string?
  inputBinding:
    prefix: --biomaterial_id
- id: in_organism_id
  doc: Limit query to the selected organism
  type: string?
  inputBinding:
    prefix: --organism_id
- id: in_dbxref_id
  doc: Limit query to the selected ref
  type: string?
  inputBinding:
    prefix: --dbxref_id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tripaille
- expression
- get_biomaterials
