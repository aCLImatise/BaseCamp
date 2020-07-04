class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pal_finder.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pal_finder_v_zero_dot_zero_two_dot_zero_four_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: config_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pal_finder
