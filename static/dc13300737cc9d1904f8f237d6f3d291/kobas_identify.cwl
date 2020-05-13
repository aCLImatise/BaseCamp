class: CommandLineTool
id: kobas_identify.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: y
  doc: ''
  type: string
  inputBinding:
    prefix: -y
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: x
  doc: ''
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- kobas-identify
