class: CommandLineTool
id: ../../../merlin_regress.cwl
inputs:
- id: in_mean
  doc: '[0.00], --variance [1.00], --heritability [0.50],'
  type: boolean
  inputBinding:
    prefix: --mean
- id: in_test_retest
  doc: '[1.00]'
  type: boolean
  inputBinding:
    prefix: --testRetest
- id: in_inverse_normal
  doc: ''
  type: boolean
  inputBinding:
    prefix: --inverseNormal
- id: in_prefix
  doc: '[merlin], --pdf, --tabulate, --quiet,'
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_marker_names
  doc: ''
  type: boolean
  inputBinding:
    prefix: --markerNames
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merlin-regress
