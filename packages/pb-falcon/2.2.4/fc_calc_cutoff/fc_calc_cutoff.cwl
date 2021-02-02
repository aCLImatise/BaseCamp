class: CommandLineTool
id: ../../../fc_calc_cutoff.cwl
inputs:
- id: in_coverage
  doc: 'Desired coverage ratio (i.e. over-sampling) (default: 20)'
  type: long
  inputBinding:
    prefix: --coverage
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fc_calc_cutoff
