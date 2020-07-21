class: CommandLineTool
id: ../../../planemo_create_gist.cwl
inputs:
- id: link_type
  doc: '[raw|html]  Link type to generate for the file.'
  type: boolean
  inputBinding:
    prefix: --link_type
- id: file_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- create_gist
