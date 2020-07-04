class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fc_calc_cutoff_capture.cwl
inputs:
- id: coverage
  doc: ''
  type: string
  inputBinding:
    prefix: --coverage
- id: fc_calc_cut_off
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_size
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: capture
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_calc_cutoff
- capture
