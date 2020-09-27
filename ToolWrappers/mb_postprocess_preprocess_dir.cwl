class: CommandLineTool
id: mb_postprocess_preprocess_dir.cwl
inputs:
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --prefix
- id: in_mock_in_bird_post_process
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-postprocess
- preprocess_dir
