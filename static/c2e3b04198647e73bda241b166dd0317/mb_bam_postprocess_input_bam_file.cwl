class: CommandLineTool
id: mb_bam_postprocess_input_bam_file.cwl
inputs:
- id: in_min_length
  doc: ''
  type: long
  inputBinding:
    prefix: --min-length
- id: in_mock_in_bird_bam_post_process
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
- mb-bam-postprocess
- input_bam_file
