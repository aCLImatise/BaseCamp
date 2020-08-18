class: CommandLineTool
id: ../../../pslMrnaCover.cwl
inputs:
- id: minsize
  doc: '- default 100.  Minimum size of mRNA considered'
  type: string
  inputBinding:
    prefix: -minSize
- id: list_zero
  doc: "- List accessions that don't align in zero.tab"
  type: string
  inputBinding:
    prefix: -listZero
- id: mrna_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mrna_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslMrnaCover
