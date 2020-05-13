class: CommandLineTool
id: esl_mixdchlet_gen.cwl
inputs:
- id: s
  doc: ': set random number seed  [0]'
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: ': number of counts per vector  [100]'
  type: string
  inputBinding:
    prefix: -M
- id: n
  doc: ': number of countvectors to generate  [1000]'
  type: string
  inputBinding:
    prefix: -N
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- gen
