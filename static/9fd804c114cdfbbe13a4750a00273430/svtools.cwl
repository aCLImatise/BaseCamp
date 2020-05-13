class: CommandLineTool
id: svtools.cwl
inputs:
- id: contact
  doc: feature requests, bugs, mailing lists, etc.
  type: boolean
  inputBinding:
    prefix: --contact
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
