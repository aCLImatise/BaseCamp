class: CommandLineTool
id: prophyle_assignment.py.cwl
inputs:
- id: f
  doc: format of output [sam]
  type: string
  inputBinding:
    prefix: -f
- id: m
  doc: 'measure: h1=hit count, c1=coverage, h2=norm.hit count, c2=norm.coverage [h1]'
  type: string
  inputBinding:
    prefix: -m
- id: a
  doc: annotate assignments
  type: boolean
  inputBinding:
    prefix: -A
- id: l
  doc: use LCA when tie (multiple assignments with the same score)
  type: boolean
  inputBinding:
    prefix: -L
- id: x
  doc: use LCA for k-mers (multiple hits of a k-mer)
  type: boolean
  inputBinding:
    prefix: -X
- id: c
  doc: '[STR [STR ...]]  configuration (a JSON dictionary)'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_assignment.py
