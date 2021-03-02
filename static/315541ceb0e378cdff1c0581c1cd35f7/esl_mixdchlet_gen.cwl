class: CommandLineTool
id: esl_mixdchlet_gen.cwl
inputs:
- id: in_set_random_seed
  doc: ': set random number seed  [0]'
  type: long?
  inputBinding:
    prefix: -s
- id: in_number_counts_vector
  doc: ': number of counts per vector  [100]'
  type: long?
  inputBinding:
    prefix: -M
- id: in_number_countvectors_generate
  doc: ': number of countvectors to generate  [1000]'
  type: long?
  inputBinding:
    prefix: -N
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
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
- gen
