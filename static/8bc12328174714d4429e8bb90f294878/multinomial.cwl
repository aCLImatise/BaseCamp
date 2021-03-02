class: CommandLineTool
id: multinomial.cwl
inputs:
- id: in_arg_output_precision
  doc: '[ --precision ] arg (=5) Output precision of real numbers.'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_output_coefficients_probabilities
  doc: '[ --coefficients ]       Output coefficients instead of probabilities.'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_use_rowmat
  doc: "[ --outputFormat ] arg   Use alternative output format. Possible values\n\
    are: vector, rowMat, and colMat, which all use\nublas style formatting."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_output_natural_logarithm
  doc: '[ --logarithm ]          Output natural logarithm of result values.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_parameters_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_counts_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_dot_tab
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
- multinomial
