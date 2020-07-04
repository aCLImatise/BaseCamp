class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/precompute_distributions.cwl
inputs:
- id: arg_value_distributions
  doc: '[ --max_count ] arg (=500) Value up to which distributions are to be  computed.'
  type: boolean
  inputBinding:
    prefix: -N
- id: distribution_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- precompute-distributions
