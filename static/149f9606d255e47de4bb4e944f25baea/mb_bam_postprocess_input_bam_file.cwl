class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_bam_postprocess_input_bam_file.cwl
inputs:
- id: min_length
  doc: ''
  type: long
  inputBinding:
    prefix: --min-length
- id: mock_in_bird_bam_post_process
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-bam-postprocess
- input_bam_file
