class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_postprocess_output_dir.cwl
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
- output_dir
