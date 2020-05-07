class: CommandLineTool
id: metagenomics_ovl_analyses.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -A
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -B
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -C
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -S
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- metagenomics_ovl_analyses
