class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/multinomial.cwl
inputs:
- id: arg_output_precision
  doc: '[ --precision ] arg (=5) Output precision of real numbers.'
  type: boolean
  inputBinding:
    prefix: -p
- id: output_coefficients_probabilities
  doc: '[ --coefficients ]       Output coefficients instead of probabilities.'
  type: boolean
  inputBinding:
    prefix: -c
- id: arg_use_format
  doc: '[ --outputFormat ] arg   Use alternative output format. Possible values  are:
    vector, rowMat, and colMat, which all use  ublas style formatting.'
  type: boolean
  inputBinding:
    prefix: -f
- id: output_natural_logarithm
  doc: '[ --logarithm ]          Output natural logarithm of result values.'
  type: boolean
  inputBinding:
    prefix: -l
- id: parameters_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: counts_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- multinomial
