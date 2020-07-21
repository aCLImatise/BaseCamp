class: CommandLineTool
id: ../../../tiddit.cwl
inputs:
- id: sv
  doc: call structural variation
  type: boolean
  inputBinding:
    prefix: --sv
- id: cov
  doc: generate a coverage bed file
  type: boolean
  inputBinding:
    prefix: --cov
- id: tidd_it_two_do_tone_two_dot_zero
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tiddit
