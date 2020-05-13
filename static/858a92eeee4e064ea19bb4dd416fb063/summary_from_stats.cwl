class: CommandLineTool
id: summary_from_stats.cwl
inputs:
- id: output
  doc: "Output summary to file instead of stderr. (default: <_io.TextIOWrapper name='<stderr>'\
    \ mode='w' encoding='UTF-8'>)"
  type: string
  inputBinding:
    prefix: --output
- id: percentiles
  doc: 'Percentiles for summary. (default: (10, 50, 90))'
  type: string[]
  inputBinding:
    prefix: --percentiles
- id: per_reference
  doc: 'Also output a summary for each reference. (default: False)'
  type: boolean
  inputBinding:
    prefix: --per_reference
outputs: []
cwlVersion: v1.1
baseCommand:
- summary_from_stats
