class: CommandLineTool
id: pairaln.cwl
inputs:
- id: s
  doc: Try both strands
  type: boolean
  inputBinding:
    prefix: -s
- id: m
  doc: 'Alignment penalty: match, [2]'
  type: long
  inputBinding:
    prefix: -M
- id: x
  doc: 'Alignment penalty: mismatch, [-5]'
  type: long
  inputBinding:
    prefix: -X
- id: o
  doc: 'Alignment penalty: insertion or deletion, [-3]'
  type: long
  inputBinding:
    prefix: -O
- id: e
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long
  inputBinding:
    prefix: -E
- id: t
  doc: 'Alignment penalty: read end clipping, 0: distable HSP extension, otherwise
    set to -100 or other [-100]'
  type: long
  inputBinding:
    prefix: -T
- id: w
  doc: Bandwidth, [800]
  type: long
  inputBinding:
    prefix: -W
- id: a
  doc: Output alignment
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- pairaln
