class: CommandLineTool
id: tdbQuery.cwl
inputs:
- id: sql_statement
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: root
  doc: =/path/to/trackDb/root/dir
  type: boolean
  inputBinding:
    prefix: -root
- id: release
  doc: '|beta|public'
  type: string
  inputBinding:
    prefix: -release
outputs: []
cwlVersion: v1.1
baseCommand:
- tdbQuery
