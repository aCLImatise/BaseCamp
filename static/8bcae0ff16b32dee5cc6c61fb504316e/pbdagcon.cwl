class: CommandLineTool
id: pbdagcon.cwl
inputs:
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
