class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/splash_eval_counts.cwl
inputs:
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- splash
- eval-counts
