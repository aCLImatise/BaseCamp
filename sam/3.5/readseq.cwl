class: CommandLineTool
id: ../../../readseq.cwl
inputs:
- id: wid
  doc: '[th]=#            sequence line width'
  type: boolean
  inputBinding:
    prefix: -wid
- id: tab
  doc: =#                left indent
  type: boolean
  inputBinding:
    prefix: -tab
- id: col
  doc: '[space]=#         column space within sequence line on output'
  type: boolean
  inputBinding:
    prefix: -col
- id: gap
  doc: '[count]           count gap chars in sequence numbers'
  type: boolean
  inputBinding:
    prefix: -gap
- id: name_right
  doc: '[=#]   name on left/right side [=max width]'
  type: boolean
  inputBinding:
    prefix: -nameright
- id: name_top
  doc: name at top/bottom
  type: boolean
  inputBinding:
    prefix: -nametop
- id: num_right
  doc: seq index on left/right side
  type: boolean
  inputBinding:
    prefix: -numright
- id: num_top
  doc: index on top/bottom
  type: boolean
  inputBinding:
    prefix: -numtop
- id: match
  doc: '[=.]            use match base for 2..n species'
  type: boolean
  inputBinding:
    prefix: -match
- id: inter
  doc: '[line=#]        blank line(s) between sequence blocks'
  type: boolean
  inputBinding:
    prefix: -inter
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_dot_seq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- readseq
