class: CommandLineTool
id: ../../../cdbyank.cwl
inputs:
- id: number_records_indexed
  doc: the number of records indexed
  type: string
  inputBinding:
    prefix: -n
- id: keys_stored_indexfile
  doc: all keys stored in <index_file>
  type: string
  inputBinding:
    prefix: -l
- id: indexing_summary_info
  doc: indexing summary info
  type: string
  inputBinding:
    prefix: -s
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: index_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cdbyank
