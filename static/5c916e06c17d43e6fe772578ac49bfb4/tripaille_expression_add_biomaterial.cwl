class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tripaille_expression_add_biomaterial.cwl
inputs:
- id: analysis_id
  doc: The id of the associated analysis. Required for TripalV3
  type: string
  inputBinding:
    prefix: --analysis_id
- id: no_wait
  doc: Do not wait for job to complete
  type: boolean
  inputBinding:
    prefix: --no_wait
- id: organism_id
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_path
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- expression
- add_biomaterial
