class: CommandLineTool
id: precompute_distributions.cwl
inputs:
- id: distribution_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n
  doc: '[ --max_count ] arg (=500) Value up to which distributions are to be  computed.'
  type: boolean
  inputBinding:
    prefix: -N
outputs: []
cwlVersion: v1.1
baseCommand:
- precompute-distributions
