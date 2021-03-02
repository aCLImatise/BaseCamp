class: CommandLineTool
id: fc_calc_cutoff_capture.cwl
inputs:
- id: in_coverage
  doc: ''
  type: string?
  inputBinding:
    prefix: --coverage
- id: in_fc_calc_cut_off
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome_size
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_capture
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_calc_cutoff
- capture
