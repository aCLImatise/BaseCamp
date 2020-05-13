class: CommandLineTool
id: tripaille_db_get_mviews.cwl
inputs:
- id: name
  doc: filter on mview name
  type: string
  inputBinding:
    prefix: --name
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- db
- get_mviews
