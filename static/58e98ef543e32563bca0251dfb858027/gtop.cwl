class: CommandLineTool
id: gtop.cwl
inputs:
- id: a
  doc: ': apply asymmetric gap weighting mode.'
  type: boolean
  inputBinding:
    prefix: -a
- id: s
  doc: ': apply symmetric gap weighting mode (default).'
  type: boolean
  inputBinding:
    prefix: -s
- id: l
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: g
  doc: '<value>: gap opening penalty (default: 4.5).'
  type: boolean
  inputBinding:
    prefix: -G
- id: e
  doc: '<value>: gap extension penalty (default: 0.05).'
  type: boolean
  inputBinding:
    prefix: -E
- id: f
  doc: '<value>: rescaling factor (default: 100).'
  type: boolean
  inputBinding:
    prefix: -F
- id: o
  doc: '<value>: output score offset (default: 0).  Added to match scores after multiplication
    by the rescaling factor F.'
  type: boolean
  inputBinding:
    prefix: -O
outputs: []
cwlVersion: v1.1
baseCommand:
- gtop
