class: CommandLineTool
id: xsv.cwl
inputs:
- id: list
  doc: List all commands available.
  type: boolean
  inputBinding:
    prefix: --list
outputs: []
cwlVersion: v1.1
baseCommand:
- xsv
