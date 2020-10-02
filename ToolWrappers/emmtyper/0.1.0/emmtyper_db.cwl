class: CommandLineTool
id: emmtyper_db.cwl
inputs:
- id: in_db_folder
  doc: "Where to update the DB  [default:\n/usr/local/lib/python3.7/site-packages/emmtyper/db]"
  type: double
  inputBinding:
    prefix: --db_folder
- id: in_email
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- emmtyper-db
