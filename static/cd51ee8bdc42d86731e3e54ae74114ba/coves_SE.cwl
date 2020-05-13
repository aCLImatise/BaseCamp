class: CommandLineTool
id: coves_SE.cwl
inputs:
- id: coves
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: a
  doc: ': show all pairs, not just Watson-Crick'
  type: boolean
  inputBinding:
    prefix: -a
- id: g
  doc: ': set expected background GC composition (default 0.5)'
  type: string
  inputBinding:
    prefix: -g
- id: m
  doc: ': mountain representation of structural alignment'
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: ': secondary structure string representation of  structural alignment'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- coves-SE
