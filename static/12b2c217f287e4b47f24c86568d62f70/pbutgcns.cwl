class: CommandLineTool
id: pbutgcns.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: '[ --verbose ]      Increase logging verbosity'
  type: boolean
  inputBinding:
    prefix: -v
- id: j
  doc: '[ --threads ] arg  Number of consensus threads to use'
  type: boolean
  inputBinding:
    prefix: -j
- id: input
  doc: Unitig input file
  type: string
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- pbutgcns
