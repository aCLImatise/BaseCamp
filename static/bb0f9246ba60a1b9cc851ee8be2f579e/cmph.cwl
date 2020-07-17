class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cmph.cwl
inputs:
- id: var_0
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: var_8
  doc: ''
  type: string
  inputBinding:
    prefix: -M
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: var_12
  doc: ''
  type: File
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- cmph
