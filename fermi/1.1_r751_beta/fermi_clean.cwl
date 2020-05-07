class: CommandLineTool
id: fermi_clean.cwl
inputs:
- id: in_mog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n
  doc: read maximum INT neighbors per node [512]
  type: long
  inputBinding:
    prefix: -N
- id: d
  doc: drop a neighbor if relative overlap ratio below FLOAT [0.70]
  type: double
  inputBinding:
    prefix: -d
- id: c
  doc: clean the graph
  type: boolean
  inputBinding:
    prefix: -C
- id: l
  doc: minimum tip length [300]
  type: long
  inputBinding:
    prefix: -l
- id: e
  doc: minimum tip read count [4]
  type: long
  inputBinding:
    prefix: -e
- id: i
  doc: minimum internal unitig read count [3]
  type: long
  inputBinding:
    prefix: -i
- id: o
  doc: minimum overlap [60]
  type: long
  inputBinding:
    prefix: -o
- id: r
  doc: minimum relative overlap ratio [0.80]
  type: double
  inputBinding:
    prefix: -R
- id: n
  doc: number of iterations [3]
  type: long
  inputBinding:
    prefix: -n
- id: a
  doc: aggressive bubble popping
  type: boolean
  inputBinding:
    prefix: -A
- id: s
  doc: skip bubble simplification
  type: boolean
  inputBinding:
    prefix: -S
- id: w
  doc: minimum coverage to keep a bubble [10.00]
  type: double
  inputBinding:
    prefix: -w
- id: r
  doc: minimum fraction to keep a bubble [0.15]
  type: double
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- clean
