class: CommandLineTool
id: pfscale.cwl
inputs:
- id: l
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: l
  doc: '<value>: logarithmic base of parameters (default: 10).'
  type: boolean
  inputBinding:
    prefix: -L
- id: m
  doc: '<value>: profile mode number to scale.'
  type: boolean
  inputBinding:
    prefix: -M
- id: n
  doc: '<value>: database size (default: 14147368).'
  type: boolean
  inputBinding:
    prefix: -N
- id: p
  doc: '<value>: upper threshold of probability range (default: 0.0001).'
  type: boolean
  inputBinding:
    prefix: -P
- id: q
  doc: '<value>: lower threshold of probability range (default: 0.000001).'
  type: boolean
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- pfscale
