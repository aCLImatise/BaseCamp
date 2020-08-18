class: CommandLineTool
id: ../../../fastq_time_slice.py_output_fastq.cwl
inputs:
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: fast_q_time_slice_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_time_slice.py
- output_fastq
