class: CommandLineTool
id: trim_galore.cwl
inputs:
- id: hard_trim5
  doc: '20: CCTAAGGAAACAAGTACACT'
  type: boolean
  inputBinding:
    prefix: --hardtrim5
- id: hard_trim3
  doc: '20:                                                   TTTTTAAGAAAATGGAAAAT'
  type: boolean
  inputBinding:
    prefix: --hardtrim3
outputs: []
cwlVersion: v1.1
baseCommand:
- trim_galore
