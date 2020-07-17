class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/deepbgc_download.cwl
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
- download
