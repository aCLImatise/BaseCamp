class: CommandLineTool
id: ../../../mockinbird_preprocess_output_dir.cwl
inputs:
- id: log_level
  doc: ''
  type: string
  inputBinding:
    prefix: --log_level
- id: mock_in_bird
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: preprocess
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mockinbird
- preprocess
- output_dir
