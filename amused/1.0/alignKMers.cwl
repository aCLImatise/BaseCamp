class: CommandLineTool
id: ../../../alignKMers.cwl
inputs:
- id: o
  doc: = where to output results [default=stdout]
  type: string
  inputBinding:
    prefix: -o
- id: l
  doc: = where to output results [default=stderr]
  type: string
  inputBinding:
    prefix: -l
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: v
  doc: ''
  type: long
  inputBinding:
    prefix: -v
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- alignKMers
