class: CommandLineTool
id: planemo_create_gist_OPTIONS_FILE_PATH.cwl
inputs:
- id: link_type
  doc: '[raw|html]  Link type to generate for the file.'
  type: boolean
  inputBinding:
    prefix: --link_type
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- create_gist
- OPTIONS
- FILE_PATH
