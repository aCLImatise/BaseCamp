class: CommandLineTool
id: tripaille_db_populate_mviews.cwl
inputs:
- id: in_name
  doc: filter on mview name
  type: string?
  inputBinding:
    prefix: --name
- id: in_no_wait
  doc: Do not wait for job to complete
  type: boolean?
  inputBinding:
    prefix: --no_wait
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tripaille
- db
- populate_mviews
