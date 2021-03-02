class: CommandLineTool
id: qscores_from_summary.cwl
inputs:
- id: in_median
  doc: 'Use median. If false, use mean. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --median
- id: in_ref
  doc: 'process single ref, rather than overall result (default: None)'
  type: string?
  inputBinding:
    prefix: --ref
- id: in_summaries
  doc: '*summ.txt created by summary_from_stats'
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
- qscores_from_summary
