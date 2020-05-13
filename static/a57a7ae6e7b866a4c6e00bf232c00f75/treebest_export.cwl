class: CommandLineTool
id: treebest_export.cwl
inputs:
- id: tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: x
  doc: width [640]
  type: string
  inputBinding:
    prefix: -x
- id: y
  doc: height [480]
  type: string
  inputBinding:
    prefix: -y
- id: m
  doc: margin [20]
  type: string
  inputBinding:
    prefix: -m
- id: f
  doc: font size [11]
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: box size [4.0]
  type: string
  inputBinding:
    prefix: -b
- id: w
  doc: font width [font_size/2]
  type: string
  inputBinding:
    prefix: -w
- id: s
  doc: species tree
  type: File
  inputBinding:
    prefix: -s
- id: b
  doc: suppress bootstrap value
  type: boolean
  inputBinding:
    prefix: -B
- id: m
  doc: black/white mode
  type: boolean
  inputBinding:
    prefix: -M
- id: s
  doc: show species name
  type: boolean
  inputBinding:
    prefix: -S
- id: d
  doc: speciation/duplication inference
  type: boolean
  inputBinding:
    prefix: -d
- id: p
  doc: pseudo-length
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- export
