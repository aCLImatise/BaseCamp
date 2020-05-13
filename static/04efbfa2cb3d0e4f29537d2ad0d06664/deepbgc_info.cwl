class: CommandLineTool
id: deepbgc_info.cwl
inputs:
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- deepbgc
- info
