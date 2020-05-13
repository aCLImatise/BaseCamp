class: CommandLineTool
id: mapsembler2_extend.cwl
inputs:
- id: o
  doc: ': where to write outputs. Default: "res_mapsembler" '
  type: File
  inputBinding:
    prefix: -o
- id: p
  doc: ': kind of prosses Breadth or Depth. Default: Breadth '
  type: string
  inputBinding:
    prefix: -p
- id: h
  doc: this message and exit
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- mapsembler2_extend
