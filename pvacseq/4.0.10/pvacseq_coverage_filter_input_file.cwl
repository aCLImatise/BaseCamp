class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pvacseq_coverage_filter_input_file.cwl
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
- input_file
