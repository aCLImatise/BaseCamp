class: CommandLineTool
id: tripaille_analysis_get_analyses_tripal.cwl
inputs:
- id: analysis_id
  doc: An analysis entity/node ID
  type: long
  inputBinding:
    prefix: --analysis_id
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- get_analyses_tripal
