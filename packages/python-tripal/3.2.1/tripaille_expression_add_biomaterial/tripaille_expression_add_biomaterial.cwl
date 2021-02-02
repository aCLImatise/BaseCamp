class: CommandLineTool
id: tripaille_expression_add_biomaterial.cwl
inputs:
- id: in_analysis_id
  doc: The id of the associated analysis. Required for TripalV3
  type: long
  inputBinding:
    prefix: --analysis_id
- id: in_no_wait
  doc: Do not wait for job to complete
  type: boolean
  inputBinding:
    prefix: --no_wait
- id: in_file_type
  doc: Add a new biomaterial file to the database
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- expression
- add_biomaterial
