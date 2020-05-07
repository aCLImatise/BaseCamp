class: CommandLineTool
id: alleyoop_merge.cwl
inputs:
- id: countfiles
  doc: tCount files
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output file
  type: string
  inputBinding:
    prefix: --output
- id: column
  doc: 'Column or expression used to summarize files. (default: TcReadCount / ReadCount)'
  type: string
  inputBinding:
    prefix: --column
- id: column_name
  doc: 'Index of meta data field to use as column name. (default: 2)'
  type: string
  inputBinding:
    prefix: --columnname
outputs: []
cwlVersion: v1.1
baseCommand:
- alleyoop
- merge
