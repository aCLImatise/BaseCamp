class: CommandLineTool
id: ppserver.py.cwl
inputs:
- id: hd_ar
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hdar
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: i
  doc: ''
  type: long
  inputBinding:
    prefix: -i
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- ppserver.py
