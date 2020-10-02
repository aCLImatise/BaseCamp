class: CommandLineTool
id: makeblastdb.cwl
inputs:
- id: in_dbtype
  doc: '[-title database_title] [-parse_seqids]'
  type: string
  inputBinding:
    prefix: -dbtype
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makeblastdb
