class: CommandLineTool
id: ../../../esl_mixdchlet_gen.cwl
inputs:
- id: set_number_seed
  doc: ': set random number seed  [0]'
  type: string
  inputBinding:
    prefix: -s
- id: number_counts_vector
  doc: ': number of counts per vector  [100]'
  type: string
  inputBinding:
    prefix: -M
- id: number_countvectors_generate
  doc: ': number of countvectors to generate  [1000]'
  type: string
  inputBinding:
    prefix: -N
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- gen
