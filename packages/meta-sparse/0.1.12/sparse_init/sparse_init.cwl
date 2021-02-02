class: CommandLineTool
id: sparse_init.cwl
inputs:
- id: in_dbname
  doc: "Name for the new database to be generated.\n"
  type: string
  inputBinding:
    prefix: --dbname
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sparse
- init
