class: CommandLineTool
id: minimap2.py.cwl
inputs:
- id: x
  doc: 'preset: sr, map-pb, map-ont, asm5, asm10 or splice'
  type: string
  inputBinding:
    prefix: -x
- id: n
  doc: mininum number of minimizers
  type: long
  inputBinding:
    prefix: -n
- id: m
  doc: mininum chaining score
  type: long
  inputBinding:
    prefix: -m
- id: k
  doc: k-mer length
  type: long
  inputBinding:
    prefix: -k
- id: w
  doc: minimizer window length
  type: long
  inputBinding:
    prefix: -w
- id: r
  doc: band width
  type: long
  inputBinding:
    prefix: -r
- id: c
  doc: output the cs tag
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- minimap2.py
