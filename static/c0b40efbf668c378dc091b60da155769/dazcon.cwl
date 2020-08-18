class: CommandLineTool
id: ../../../dazcon.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: x
  doc: ''
  type: boolean
  inputBinding:
    prefix: -x
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: daz_con
  doc: '[-v] [-o] [-x] [-m <uint>] -s <string> -a <string> [-t <uint>] [-l <uint>]
    [-c <uint>] [-j <int>] [--] [--version] [-h] <list of ints> ...'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dazcon
