class: CommandLineTool
id: dazcon.cwl
inputs:
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
