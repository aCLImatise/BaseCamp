class: CommandLineTool
id: ../../../nw_distance_filename|_.cwl
inputs:
- id: matrix_mode_print
  doc: ': in matrix mode, print a triangular matrix. In other modes, print values
    on a line, separated by TABs.'
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_distance
- filename|-
