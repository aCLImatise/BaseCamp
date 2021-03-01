class: CommandLineTool
id: esl_mixdchlet_fit.cwl
inputs:
- id: in_set_random_seed
  doc: ': set random number seed to <n>  [0]'
  type: long?
  inputBinding:
    prefix: -s
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_k
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_count_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/easel:0.47--h516909a_0
cwlVersion: v1.1
baseCommand:
- esl-mixdchlet
- fit
