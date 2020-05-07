class: CommandLineTool
id: tripaille_expression_get_biomaterials_tripal.cwl
inputs:
- id: biomaterial_id
  doc: A biomaterial entity ID
  type: long
  inputBinding:
    prefix: --biomaterial_id
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- expression
- get_biomaterials_tripal
