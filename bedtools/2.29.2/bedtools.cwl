class: CommandLineTool
id: bedtools.cwl
inputs:
- id: contact
  doc: Feature requests, bugs, mailing lists, etc.
  type: boolean
  inputBinding:
    prefix: --contact
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
