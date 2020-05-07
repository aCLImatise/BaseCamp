class: CommandLineTool
id: db_dump.cwl
inputs:
- id: k_npv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -kNpV
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -D
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- db_dump
