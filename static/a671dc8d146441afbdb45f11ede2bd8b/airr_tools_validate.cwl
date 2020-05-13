class: CommandLineTool
id: airr_tools_validate.cwl
inputs:
- id: a
  doc: ''
  type: string[]
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- airr-tools
- validate
