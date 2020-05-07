class: CommandLineTool
id: pslMrnaCover.cwl
inputs:
- id: mrna_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mrna_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: default
  doc: 100.  Minimum size of mRNA considered
  type: string
  inputBinding:
    prefix: '- default'
- id: list_zero
  doc: that don't align in zero.tab
  type: string
  inputBinding:
    prefix: -listZero
outputs: []
cwlVersion: v1.1
baseCommand:
- pslMrnaCover
