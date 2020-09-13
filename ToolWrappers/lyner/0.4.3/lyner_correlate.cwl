class: CommandLineTool
id: ../../../lyner_correlate.cwl
inputs:
- id: in_method
  doc: '[pearson|kendall|spearman]'
  type: boolean
  inputBinding:
    prefix: --method
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- correlate
