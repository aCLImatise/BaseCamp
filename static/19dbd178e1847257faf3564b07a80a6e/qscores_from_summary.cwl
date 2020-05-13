class: CommandLineTool
id: qscores_from_summary.cwl
inputs:
- id: summaries
  doc: '*summ.txt created by summary_from_stats'
  type: string
  inputBinding:
    position: 0
- id: median
  doc: 'Use median. If false, use mean. (default: False)'
  type: boolean
  inputBinding:
    prefix: --median
- id: ref
  doc: 'process single ref, rather than overall result (default: None)'
  type: string
  inputBinding:
    prefix: --ref
outputs: []
cwlVersion: v1.1
baseCommand:
- qscores_from_summary
