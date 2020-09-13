class: CommandLineTool
id: ../../../mockinbird_postprocess_preprocess_dir.cwl
inputs:
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --prefix
- id: in_mock_in_bird
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_post_process
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
- postprocess
- preprocess_dir
