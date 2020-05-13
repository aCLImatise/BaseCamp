class: CommandLineTool
id: esl_mixdchlet_sample.cwl
inputs:
- id: s
  doc: ': set random number seed  [0]'
  type: string
  inputBinding:
    prefix: -s
- id: k
  doc: ': alphabet size  [20]'
  type: string
  inputBinding:
    prefix: -K
- id: q
  doc: ': number of mixture components  [9]'
  type: string
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- sample
