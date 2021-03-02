class: CommandLineTool
id: fc_calc_cutoff_genome_size.cwl
inputs:
- id: in_coverage
  doc: ''
  type: string?
  inputBinding:
    prefix: --coverage
- id: in_capture
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_calc_cutoff
- genome_size
