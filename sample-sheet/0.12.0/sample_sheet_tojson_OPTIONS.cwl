class: CommandLineTool
id: sample_sheet_tojson_OPTIONS.cwl
inputs:
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sample-sheet
- tojson
- OPTIONS
