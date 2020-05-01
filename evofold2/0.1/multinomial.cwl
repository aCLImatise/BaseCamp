#!/usr/bin/env cwl-runner

baseCommand:
- multinomial
class: CommandLineTool
cwlVersion: v1.0
id: multinomial
inputs:
- doc: ''
  id: parameters_tab
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: counts_tab
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: output_tab
  inputBinding:
    position: 2
  type: string
- doc: '[ --precision ] arg (=5) Output precision of real numbers.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --coefficients ]       Output coefficients instead of probabilities.'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --outputFormat ] arg   Use alternative output format. Possible values  are:
    vector, rowMat, and colMat, which all use  ublas style formatting.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --logarithm ]          Output natural logarithm of result values.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
