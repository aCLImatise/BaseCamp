class: CommandLineTool
id: pyprophet_statistics.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- statistics
