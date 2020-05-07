class: CommandLineTool
id: tripaille_db_populate_mviews.cwl
inputs:
- id: name
  doc: filter on mview name
  type: string
  inputBinding:
    prefix: --name
- id: no_wait
  doc: Do not wait for job to complete
  type: boolean
  inputBinding:
    prefix: --no_wait
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- db
- populate_mviews
