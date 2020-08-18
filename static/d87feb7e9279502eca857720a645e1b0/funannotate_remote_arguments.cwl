class: CommandLineTool
id: ../../../funannotate_remote_arguments.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
- id: fun_annotate_remote_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- remote
- arguments
