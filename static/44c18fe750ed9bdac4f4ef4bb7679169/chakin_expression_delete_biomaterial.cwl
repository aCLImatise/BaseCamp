class: CommandLineTool
id: chakin_expression_delete_biomaterial.cwl
inputs:
- id: names
  doc: 'JSON list of biomaterial names to delete.  [default: []]'
  type: string
  inputBinding:
    prefix: --names
- id: ids
  doc: 'JSON list of biomaterial ids to delete.  [default: []]'
  type: string
  inputBinding:
    prefix: --ids
- id: organism_id
  doc: Delete all biomaterial associated with this organism id.
  type: string
  inputBinding:
    prefix: --organism_id
- id: analysis_id
  doc: Delete all biomaterial associated with this analysis id.
  type: string
  inputBinding:
    prefix: --analysis_id
outputs: []
cwlVersion: v1.1
baseCommand:
- chakin
- expression
- delete_biomaterial
