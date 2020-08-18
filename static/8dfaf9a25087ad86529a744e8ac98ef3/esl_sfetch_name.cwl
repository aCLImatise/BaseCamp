class: CommandLineTool
id: ../../../esl_sfetch_name.cwl
inputs:
- id: esl_s_fetch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-sfetch
- name
