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
cwlVersion: v1.1
baseCommand:
- fastq_truncate
