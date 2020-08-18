class: CommandLineTool
id: ../../../mb_preprocess_parclip_fastq.cwl
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
- parclip_fastq
