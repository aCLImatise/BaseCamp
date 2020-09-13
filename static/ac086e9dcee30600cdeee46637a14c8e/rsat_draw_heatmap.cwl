class: CommandLineTool
id: ../../../rsat_draw_heatmap.cwl
inputs:
- id: in_r_plot
  doc: (2016-02-29).
  type: boolean
  inputBinding:
    prefix: -r_plot
- id: in_out_format
  doc: '[png|jpeg]'
  type: boolean
  inputBinding:
    prefix: -out_format
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_draw_heat_map
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_heat_map_dot
  doc: "\e[1m-out_format img_format\e[0m"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- draw-heatmap
