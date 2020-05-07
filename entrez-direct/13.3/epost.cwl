class: CommandLineTool
id: epost.cwl
inputs:
- id: db
  doc: Database name
  type: boolean
  inputBinding:
    prefix: -db
- id: id
  doc: Unique identifier(s) or accession number(s)
  type: boolean
  inputBinding:
    prefix: -id
- id: format
  doc: uid or acc
  type: boolean
  inputBinding:
    prefix: -format
- id: input
  doc: Read from file instead of stdin
  type: boolean
  inputBinding:
    prefix: -input
- id: label
  doc: Alias for query step
  type: boolean
  inputBinding:
    prefix: -label
outputs: []
cwlVersion: v1.1
baseCommand:
- epost
