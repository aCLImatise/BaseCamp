class: CommandLineTool
id: alignKMers.cwl
inputs:
- id: i
  doc: = unaligned k-mers
  type: string
  inputBinding:
    prefix: -i
- id: v
  doc: = minimum overlap to align [default=3]
  type: long
  inputBinding:
    prefix: -v
- id: r
  doc: = also reverse complement
  type: boolean
  inputBinding:
    prefix: -r
- id: m
  doc: = penalty for mismatches [default=1]
  type: string
  inputBinding:
    prefix: -m
- id: i
  doc: '= '
  type: string
  inputBinding:
    prefix: -i
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
outputs: []
cwlVersion: v1.1
baseCommand:
- alignKMers
