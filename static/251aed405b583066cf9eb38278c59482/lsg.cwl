class: CommandLineTool
id: lsg.cwl
inputs:
- id: basename
  doc: '<basename>     # (required)'
  type: boolean
  inputBinding:
    prefix: --basename
- id: gsa
  doc: "<GSAFilename>  # (default: '<basename>.pairSA')"
  type: boolean
  inputBinding:
    prefix: --GSA
- id: tau
  doc: '<TAU>          # (default: 0)'
  type: boolean
  inputBinding:
    prefix: --TAU
- id: cyc_num
  doc: '<CycNum>       # (default: 0)'
  type: boolean
  inputBinding:
    prefix: --CycNum
- id: read_length
  doc: '# 0 if unknown or not fixed (default: 0)'
  type: string
  inputBinding:
    prefix: --read-length
outputs: []
cwlVersion: v1.1
baseCommand:
- lsg
