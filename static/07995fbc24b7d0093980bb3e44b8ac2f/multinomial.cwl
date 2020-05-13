class: CommandLineTool
id: multinomial.cwl
inputs:
- id: parameters_tab
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: counts_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_tab
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: p
  doc: '[ --precision ] arg (=5) Output precision of real numbers.'
  type: boolean
  inputBinding:
    prefix: -p
- id: c
  doc: '[ --coefficients ]       Output coefficients instead of probabilities.'
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: '[ --outputFormat ] arg   Use alternative output format. Possible values  are:
    vector, rowMat, and colMat, which all use  ublas style formatting.'
  type: boolean
  inputBinding:
    prefix: -f
- id: l
  doc: '[ --logarithm ]          Output natural logarithm of result values.'
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- multinomial
