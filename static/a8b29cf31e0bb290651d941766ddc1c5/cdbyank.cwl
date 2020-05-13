class: CommandLineTool
id: cdbyank.cwl
inputs:
- id: n
  doc: the number of records indexed
  type: string
  inputBinding:
    prefix: -n
- id: l
  doc: all keys stored in <index_file>
  type: string
  inputBinding:
    prefix: -l
- id: s
  doc: indexing summary info
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- cdbyank
