class: CommandLineTool
id: dsk.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: km_er_size
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: t
  doc: ''
  type: long
  inputBinding:
    prefix: -t
- id: m
  doc: ''
  type: long
  inputBinding:
    prefix: -m
- id: d
  doc: ''
  type: long
  inputBinding:
    prefix: -d
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: histo
  doc: ''
  type: boolean
  inputBinding:
    prefix: -histo
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- dsk
