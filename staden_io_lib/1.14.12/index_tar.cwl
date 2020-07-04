class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/index_tar.cwl
inputs:
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: tar_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- index_tar
