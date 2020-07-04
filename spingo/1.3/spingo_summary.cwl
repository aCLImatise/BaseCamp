class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/spingo_summary.py_RESULTS_FILE.cwl
inputs:
- id: level
  doc: ''
  type: string
  inputBinding:
    prefix: --level
- id: similarity
  doc: ''
  type: string
  inputBinding:
    prefix: --similarity
- id: threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --threshold
- id: spin_go_summary_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- spingo_summary.py
- RESULTS_FILE
