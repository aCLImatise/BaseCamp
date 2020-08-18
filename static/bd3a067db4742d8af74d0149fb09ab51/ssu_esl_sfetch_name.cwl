class: CommandLineTool
id: ../../../ssu_esl_sfetch_name.cwl
inputs:
- id: ssu_esl_s_fetch
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
- ssu-esl-sfetch
- name
