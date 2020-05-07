class: CommandLineTool
id: xmlToSql_in.xml_in.dtd_in.stats.cwl
inputs:
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- xmlToSql
- in.xml
- in.dtd
- in.stats
