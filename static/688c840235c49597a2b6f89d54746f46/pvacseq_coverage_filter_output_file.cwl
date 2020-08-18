class: CommandLineTool
id: ../../../pvacseq_coverage_filter_output_file.cwl
inputs:
- id: normal_cov
  doc: ''
  type: string
  inputBinding:
    prefix: --normal-cov
- id: pvac_seq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: coverage_filter
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pvacseq
- coverage_filter
- output_file
