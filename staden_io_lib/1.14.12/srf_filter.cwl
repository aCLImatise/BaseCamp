class: CommandLineTool
id: srf_filter.cwl
inputs:
- id: v
  doc: Print verbose messages.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- srf_filter
