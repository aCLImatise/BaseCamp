class: CommandLineTool
id: fastq_time_slice.py_input_fastq.cwl
inputs:
- id: in_e
  doc: ''
  type: string?
  inputBinding:
    prefix: -e
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_fast_q_time_slice_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- fastq_time_slice.py
- input_fastq
