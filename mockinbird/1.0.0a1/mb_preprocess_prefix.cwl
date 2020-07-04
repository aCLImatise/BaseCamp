class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_preprocess_prefix.cwl
inputs:
- id: log_level
  doc: ''
  type: string
  inputBinding:
    prefix: --log_level
- id: mock_in_bird_preprocess
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-preprocess
- prefix
