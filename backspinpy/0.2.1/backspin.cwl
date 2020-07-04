class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/backspin.cwl
inputs:
- id: hbv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hbv
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: ''
  type: long
  inputBinding:
    prefix: -d
- id: f
  doc: ''
  type: long
  inputBinding:
    prefix: -f
- id: var_5
  doc: ''
  type: long
  inputBinding:
    prefix: -t
- id: var_6
  doc: ''
  type: double
  inputBinding:
    prefix: -s
- id: var_7
  doc: ''
  type: long
  inputBinding:
    prefix: -T
- id: var_8
  doc: ''
  type: double
  inputBinding:
    prefix: -S
- id: g
  doc: ''
  type: long
  inputBinding:
    prefix: -g
- id: c
  doc: ''
  type: long
  inputBinding:
    prefix: -c
- id: k
  doc: ''
  type: double
  inputBinding:
    prefix: -k
- id: r
  doc: ''
  type: double
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- backspin
