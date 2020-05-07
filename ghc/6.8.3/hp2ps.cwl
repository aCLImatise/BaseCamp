class: CommandLineTool
id: hp2ps.cwl
inputs:
- id: d
  doc: sort by standard deviation
  type: boolean
  inputBinding:
    prefix: -d
- id: ef
  doc: '[in|mm|pt] produce Encapsulated PostScript f units wide (f > 2 inches)'
  type: boolean
  inputBinding:
    prefix: -ef
- id: g
  doc: produce output suitable for GHOSTSCRIPT previever
  type: boolean
  inputBinding:
    prefix: -g
- id: i
  doc: '[+|-] sort by identifier string (-i+ gives greatest on top) '
  type: boolean
  inputBinding:
    prefix: -i
- id: m
  doc: multi-page output (key separate from graph)
  type: boolean
  inputBinding:
    prefix: -M
- id: mn
  doc: maximum of n bands (default & max 20)
  type: string
  inputBinding:
    prefix: -mn
- id: m0
  doc: the band limit altogether
  type: string
  inputBinding:
    prefix: -m0
- id: p
  doc: use previous scaling, shading and ordering
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: use small title box
  type: boolean
  inputBinding:
    prefix: -s
- id: tf
  doc: trace bands which sum below f% (default 1%, max 5%)
  type: string
  inputBinding:
    prefix: -tf
- id: y
  doc: traditional
  type: boolean
  inputBinding:
    prefix: -y
- id: c
  doc: colour ouput
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- hp2ps
