class: CommandLineTool
id: esl_mixdchlet_gen_mixdchlet_file.cwl
inputs:
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
- mixdchlet_file
