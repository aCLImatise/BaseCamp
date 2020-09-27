class: CommandLineTool
id: pvacseq_coverage_filter_output_file.cwl
inputs:
- id: in_normal_cov
  doc: ''
  type: string
  inputBinding:
    prefix: --normal-cov
- id: in_pvac_seq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_coverage_filter
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
- pvacseq
- coverage_filter
- output_file
