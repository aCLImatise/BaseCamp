class: CommandLineTool
id: merlin_regress.cwl
inputs:
- id: mean
  doc: '[0.00], --variance [1.00], --heritability [0.50],'
  type: boolean
  inputBinding:
    prefix: --mean
- id: test_retest
  doc: '[1.00]'
  type: boolean
  inputBinding:
    prefix: --testRetest
outputs: []
cwlVersion: v1.1
baseCommand:
- merlin-regress
