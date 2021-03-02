class: CommandLineTool
id: fastq_truncate.cwl
inputs:
- id: in_fast_q_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_num_reads
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1
cwlVersion: v1.1
baseCommand:
- fastq_truncate
