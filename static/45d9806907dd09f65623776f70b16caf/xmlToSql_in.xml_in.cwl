class: CommandLineTool
id: xmlToSql_in.xml_in.stats.cwl
inputs:
- id: in_dtd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_stats
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- xmlToSql
- in.xml
- in.stats
