class: CommandLineTool
id: mb_postprocess_output_dir.cwl
inputs:
- id: in_prefix
  doc: ''
  type: string?
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
hints: []
cwlVersion: v1.1
baseCommand:
- mb-postprocess
- output_dir
