class: CommandLineTool
id: ../../../trim_galore.cwl
inputs:
- id: hard_trim_five
  doc: ': CCTAAGGAAACAAGTACACT'
  type: string
  inputBinding:
    prefix: --hardtrim5
- id: hard_trim_three
  doc: ':                                                   TTTTTAAGAAAATGGAAAAT'
  type: string
  inputBinding:
    prefix: --hardtrim3
outputs: []
cwlVersion: v1.1
baseCommand:
- trim_galore
