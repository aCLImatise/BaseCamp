class: CommandLineTool
id: precompute_distributions.cwl
inputs:
- id: in_arg_value_distributions
  doc: "[ --max_count ] arg (=500) Value up to which distributions are to be\ncomputed.\n"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_distribution_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- precompute-distributions
