class: CommandLineTool
id: filter.cwl
inputs:
- id: no_header
  doc: input does not contain a header line
  type: boolean
  inputBinding:
    prefix: --no-header
outputs: []
cwlVersion: v1.1
baseCommand:
- filter
