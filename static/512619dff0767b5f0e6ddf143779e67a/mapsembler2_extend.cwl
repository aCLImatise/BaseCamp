class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mapsembler2_extend.cwl
inputs:
- id: where_write_default
  doc: ': where to write outputs. Default: "res_mapsembler" '
  type: File
  inputBinding:
    prefix: -o
- id: kind_of_prosses
  doc: ': kind of prosses Breadth or Depth. Default: Breadth '
  type: string
  inputBinding:
    prefix: -p
- id: this_message_exit
  doc: this message and exit
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- mapsembler2_extend
