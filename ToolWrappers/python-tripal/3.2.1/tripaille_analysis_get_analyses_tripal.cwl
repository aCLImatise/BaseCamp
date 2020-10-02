class: CommandLineTool
id: tripaille_analysis_get_analyses_tripal.cwl
inputs:
- id: in_analysis_id
  doc: An analysis entity/node ID
  type: long
  inputBinding:
    prefix: --analysis_id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- get_analyses_tripal
