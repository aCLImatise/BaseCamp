class: CommandLineTool
id: mockinbird_preprocess_config_file.cwl
inputs:
- id: in_log_level
  doc: ''
  type: string
  inputBinding:
    prefix: --log_level
- id: in_mock_in_bird
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_preprocess
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mockinbird
- preprocess
- config_file
