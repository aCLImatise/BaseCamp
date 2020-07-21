class: CommandLineTool
id: ../../../mb_postprocess_config_file.cwl
inputs:
- id: prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --prefix
- id: mock_in_bird_post_process
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-postprocess
- config_file
