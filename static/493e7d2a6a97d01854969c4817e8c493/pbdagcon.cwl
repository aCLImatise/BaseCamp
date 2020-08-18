class: CommandLineTool
id: ../../../pbdagcon.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: j
  doc: ''
  type: long
  inputBinding:
    prefix: -j
- id: pbd_agc_on
  doc: '[-v] [-a] [-t <uint>] [-m <uint>] [-c <uint>] [-j <int>] [--] [--version]
    [-h] <either file path or stdin>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pbdagcon
