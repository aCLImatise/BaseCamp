class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mockinbird_postprocess_config_file.cwl
inputs:
- id: prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --prefix
- id: mock_in_bird
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: post_process
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mockinbird
- postprocess
- config_file
