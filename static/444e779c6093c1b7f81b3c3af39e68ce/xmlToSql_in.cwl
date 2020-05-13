class: CommandLineTool
id: xmlToSql_in.stats.cwl
inputs:
- id: in_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dtd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_stats
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- xmlToSql
- in.stats
