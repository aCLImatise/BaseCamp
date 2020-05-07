class: CommandLineTool
id: chakin_expression_delete_all_biomaterials.cwl
inputs:
- id: confirm
  doc: Confirm that you really do want to delete ALL of the biomaterials.
  type: boolean
  inputBinding:
    prefix: --confirm
outputs: []
cwlVersion: v1.1
baseCommand:
- chakin
- expression
- delete_all_biomaterials
