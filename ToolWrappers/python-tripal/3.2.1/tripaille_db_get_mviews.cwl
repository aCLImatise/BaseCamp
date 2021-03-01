class: CommandLineTool
id: tripaille_db_get_mviews.cwl
inputs:
- id: in_name
  doc: filter on mview name
  type: string?
  inputBinding:
    prefix: --name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tripaille
- db
- get_mviews
