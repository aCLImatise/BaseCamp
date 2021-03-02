class: CommandLineTool
id: pslStats.cwl
inputs:
- id: in_query_stats
  doc: '- output per-query statistics, the default is per-alignment stats'
  type: boolean?
  inputBinding:
    prefix: -queryStats
- id: in_overall_stats
  doc: '- output overall statistics.'
  type: boolean?
  inputBinding:
    prefix: -overallStats
- id: in_queries
  doc: "- tab separated file with of expected qNames and sizes.\nIf specified, statistic\
    \ will include queries that didn't align.\n"
  type: long?
  inputBinding:
    prefix: -queries
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pslStats
