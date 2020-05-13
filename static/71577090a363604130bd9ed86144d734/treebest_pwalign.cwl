class: CommandLineTool
id: treebest_pwalign.cwl
inputs:
- id: f
  doc: generate full alignment
  type: boolean
  inputBinding:
    prefix: -f
- id: a
  doc: do not apply matrix mean in local alignment
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: just calculate alignment boundaries
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: gap open penalty
  type: string
  inputBinding:
    prefix: -o
- id: e
  doc: gap extension penalty
  type: string
  inputBinding:
    prefix: -e
- id: n
  doc: gap end penalty for nt2nt or aa2aa
  type: string
  inputBinding:
    prefix: -n
- id: s
  doc: frame-shift penalty for aa2nt
  type: string
  inputBinding:
    prefix: -s
- id: g
  doc: good splicing penalty
  type: string
  inputBinding:
    prefix: -g
- id: w
  doc: band-width
  type: string
  inputBinding:
    prefix: -w
- id: b
  doc: bad splicing penalty
  type: string
  inputBinding:
    prefix: -b
- id: m
  doc: output miscellaneous information
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- pwalign
