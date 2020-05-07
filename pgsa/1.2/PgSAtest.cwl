class: CommandLineTool
id: PgSAtest.cwl
inputs:
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: repeats
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: test_km_ers
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: index_file
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: k
  doc: ''
  type: long
  inputBinding:
    prefix: -k
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
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
- id: p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- PgSAtest
