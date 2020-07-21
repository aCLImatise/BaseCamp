class: CommandLineTool
id: ../../../multi_sample_post_analysis.cwl
inputs:
- id: n_permutations
  doc: ''
  type: string
  inputBinding:
    prefix: --n_permutations
- id: seed
  doc: ''
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- multi_sample_post_analysis
