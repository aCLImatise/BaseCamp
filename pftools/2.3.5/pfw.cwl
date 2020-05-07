class: CommandLineTool
id: pfw.cwl
inputs:
- id: m
  doc: ': input sequences in MSA format.'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: '<value>: number of shuffles per sequence (default: 100).'
  type: boolean
  inputBinding:
    prefix: -N
- id: x
  doc: '<value>: gap excision threshold (default: 0.5).'
  type: boolean
  inputBinding:
    prefix: -X
- id: r
  doc: '<value>: random number seed, negative integer (default: -123456789).'
  type: boolean
  inputBinding:
    prefix: -R
- id: w
  doc: '<value>: total weight (default: 1).'
  type: boolean
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- pfw
