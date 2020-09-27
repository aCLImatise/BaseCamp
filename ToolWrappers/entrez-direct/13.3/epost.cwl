class: CommandLineTool
id: epost.cwl
inputs:
- id: in_db
  doc: Database name
  type: boolean
  inputBinding:
    prefix: -db
- id: in_id
  doc: Unique identifier(s) or accession number(s)
  type: boolean
  inputBinding:
    prefix: -id
- id: in_format
  doc: uid or acc
  type: boolean
  inputBinding:
    prefix: -format
- id: in_input
  doc: Read from file instead of stdin
  type: boolean
  inputBinding:
    prefix: -input
- id: in_label
  doc: Alias for query step
  type: boolean
  inputBinding:
    prefix: -label
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- epost
