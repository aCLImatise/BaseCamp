class: CommandLineTool
id: humann2_config_name.cwl
inputs:
- id: value
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: print
  doc: ''
  type: boolean
  inputBinding:
    prefix: --print
- id: update
  doc: ''
  type: string
  inputBinding:
    prefix: --update
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_config
- name
