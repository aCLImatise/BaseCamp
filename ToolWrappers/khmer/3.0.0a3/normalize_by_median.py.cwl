class: CommandLineTool
id: normalize_by_median.py.cwl
inputs:
- id: in_k
  doc: ''
  type: long
  inputBinding:
    prefix: -k
- id: in_info
  doc: ''
  type: boolean
  inputBinding:
    prefix: --info
- id: in_tests_slash_test_data_slash_test_abund_read_paired_dot_fa
  doc: 'Example:'
  type: string
  inputBinding:
    position: 0
- id: in_tests_slash_test_data_slash_test_fast_q_reads_dot_fq
  doc: 'Example:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- normalize-by-median.py
