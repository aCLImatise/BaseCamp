class: CommandLineTool
id: annotate_gapfile.cwl
inputs:
- id: data_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- annotate
- gapfile
