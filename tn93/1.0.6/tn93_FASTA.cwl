class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tn93_FASTA.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: zero
  doc: ''
  type: boolean
  inputBinding:
    prefix: '-0'
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- tn93
- FASTA
